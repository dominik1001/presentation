#!/bin/bash
set -e

source .env
API_KEY="$OPENAI_KEY"
OUT_DIR="public/images"
MODEL="gpt-image-1.5"

generate_image() {
  local name="$1"
  local prompt="$2"
  local outfile="$OUT_DIR/$name.png"

  echo "Generating $name..."

  local response
  response=$(curl -s "https://api.openai.com/v1/images/generations" \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -d "$(jq -n \
      --arg model "$MODEL" \
      --arg prompt "$prompt" \
      '{model: $model, prompt: $prompt, n: 1, size: "1536x1024"}'
    )")

  # Check for error
  local error
  error=$(echo "$response" | jq -r '.error.message // empty')
  if [ -n "$error" ]; then
    echo "ERROR generating $name: $error"
    return 1
  fi

  # Extract b64_json and decode
  echo "$response" | jq -r '.data[0].b64_json' | base64 -d > "$outfile"
  echo "Saved $outfile ($(du -h "$outfile" | cut -f1))"
}

# Run all 6 generations in parallel
generate_image "01-candle" \
  "Cinematic photography, extreme chiaroscuro, deep black background. A single white taper candle burning alone in complete darkness. The flame is the only light source, casting a small warm amber halo that fades immediately into black. The wick and wax are sharply in focus. No hands, no surface visible, the candle appears to float. Film grain, large format, desaturated except for gold and cream tones. Inspired by the visual language of The Prestige 2006." &

generate_image "02-sealed-letter" \
  "Cinematic photography, extreme chiaroscuro, deep black background. A single cream-colored envelope sealed with a dark red wax seal, resting on an invisible surface. One raking light source from the left creates dramatic shadows across the paper texture and seal. The letter appears to hold a secret. No text visible. Film grain, shallow depth of field, desaturated except gold and cream tones. Inspired by the visual language of The Prestige 2006." &

generate_image "03-spotlight" \
  "Cinematic photography, extreme chiaroscuro. An empty theatrical stage seen from the audience, completely dark except for a single sharp spotlight cone illuminating a small circle of dusty wooden floorboards at center stage. The spotlight beam is slightly visible through theatrical haze. Everything outside the circle is absolute black. No people, no props. Film grain, large format, desaturated except warm amber tones. Inspired by the visual language of The Prestige 2006." &

generate_image "04-lantern-figure" \
  "Cinematic photography, extreme chiaroscuro, deep black background. A lone figure seen from behind, walking forward into total darkness holding an antique brass lantern at their side. The lantern casts the only light, a warm amber glow illuminating a small radius of ground and the figure's silhouette. The path ahead is invisible. Sense of deliberate searching and movement. Film grain, large format, desaturated except gold tones. Inspired by the visual language of The Prestige 2006." &

generate_image "05-hand-candle" \
  "Cinematic photography, extreme chiaroscuro, deep black background. A single human hand emerging from darkness, holding a lit white taper candle. The flame illuminates the hand from below with warm amber light, revealing texture and detail. This is the same candle as before — now the mystery is revealed: a human holds it. The hand is calm, deliberate. Film grain, shallow depth of field, desaturated except gold and cream tones. Inspired by the visual language of The Prestige 2006." &

generate_image "06-terminal-glow" \
  "Cinematic photography, extreme chiaroscuro, deep black background. A close-up of a dark laptop screen glowing green text in a terminal window, illuminating the face of a person in shadow from below. The screen is the only light source. The text is slightly blurred and unreadable. Atmospheric, mysterious. Film grain, large format, desaturated except for the cold green terminal glow against the black. Inspired by the visual language of The Prestige 2006." &

echo "Waiting for all images to complete..."
wait
echo "Done! All images saved to $OUT_DIR/"
