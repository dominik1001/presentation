---
theme: default
title: Claude Code for the Rest of Us
info: Claude Code Community Meetup
author: Dominik
transition: fade
class: text-center
fonts:
  sans: Calibri, sans-serif
  serif: Georgia, serif
  mono: Consolas, monospace
---

<div class="slide-title">
  <div class="gold-rule"></div>
  <h1>Claude Code</h1>
  <p class="subtitle"><em>for the Rest of Us</em></p>
  <div class="gold-rule"></div>
  <p class="footer">Claude Code Community Meetup</p>
</div>

<style>
.slide-title {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  gap: 0;
  background: url('/images/01-candle.png') center 60% / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-title::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center 60%, rgba(8,8,8,0.55) 0%, rgba(8,8,8,0.85) 50%, rgba(8,8,8,0.95) 100%);
  z-index: -1;
}
.slide-title h1 {
  font-family: Georgia, serif;
  font-size: 60pt;
  font-weight: bold;
  color: #F5F0E8;
  margin: 16px 0 0 0;
  letter-spacing: 2px;
  text-shadow: 0 2px 20px rgba(0,0,0,0.8);
}
.slide-title .subtitle {
  font-family: Georgia, serif;
  font-size: 30pt;
  color: #C9A84C;
  margin: 0 0 16px 0;
  text-shadow: 0 2px 12px rgba(0,0,0,0.8);
}
.slide-title .gold-rule {
  width: 320px;
  height: 1px;
  background: linear-gradient(90deg, transparent, #C9A84C, transparent);
}
.slide-title .footer {
  font-family: Calibri, sans-serif;
  font-size: 13pt;
  color: #808080;
  margin-top: 48px;
}
@keyframes flicker {
  0%, 100% { opacity: 1; transform: scaleY(1) rotate(0deg); }
  25% { opacity: 0.85; transform: scaleY(0.95) rotate(-1deg); }
  50% { opacity: 0.95; transform: scaleY(1.02) rotate(0.5deg); }
  75% { opacity: 0.88; transform: scaleY(0.97) rotate(-0.5deg); }
}
</style>

<!--
This slide is on screen as people take their seats.
Do not introduce it. Do not read it.
Let it sit for a moment — then go straight into the Clarke quote.
~15 seconds
-->

---

<div class="slide-quote">
  <div class="quote-mark">"</div>
  <blockquote>
    Any sufficiently advanced technology<br/>is indistinguishable from magic.
  </blockquote>
  <p class="attribution">— Arthur C. Clarke, 1973</p>
</div>

<style>
.slide-quote {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  position: relative;
  z-index: 1;
  background: url('/images/01-candle.png') center 70% / cover no-repeat;
}
.slide-quote::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center 70%, rgba(8,8,8,0.5) 0%, rgba(8,8,8,0.82) 40%, rgba(8,8,8,0.95) 100%);
  z-index: -1;
}
.slide-quote .quote-mark {
  font-family: Georgia, serif;
  font-size: 140pt;
  color: #7A5A10;
  position: absolute;
  top: 40px;
  left: 60px;
  line-height: 1;
  opacity: 0.5;
}
.slide-quote blockquote {
  font-family: Georgia, serif;
  font-size: 34pt;
  font-style: italic;
  color: #F5F0E8;
  text-align: center;
  max-width: 80%;
  line-height: 1.4;
  border: none;
  margin: 0;
  padding: 0;
  text-shadow: 0 2px 16px rgba(0,0,0,0.9);
}
.slide-quote .attribution {
  font-family: Calibri, sans-serif;
  font-size: 16pt;
  color: #C9A84C;
  margin-top: 24px;
  text-shadow: 0 1px 8px rgba(0,0,0,0.8);
}
</style>

<!--
Read the quote slowly. Pause after it lands.
Then move to the next slide without commentary — let the flip do the work.
~30 seconds
-->

---

<div class="slide-flip">
  <h2>Any technology you understand<br/>is no longer magic.</h2>
  <p class="caption"><em>— Tonight's goal</em></p>
</div>

<style>
.slide-flip {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
}
.slide-flip h2 {
  font-family: Georgia, serif;
  font-size: 42pt;
  font-weight: bold;
  color: #C9A84C;
  text-align: center;
  max-width: 85%;
  line-height: 1.3;
  margin: 0;
}
.slide-flip .caption {
  font-family: Calibri, sans-serif;
  font-size: 16pt;
  color: #606060;
  margin-top: 32px;
}
</style>

<!--
"But I want to give you the other side of that sentence."
Read it. Pause.
"That's what the next ten minutes are about."
~30 seconds
-->

---

<div class="slide-terminal">
  <div class="terminal-window">
    <div class="title-bar">
      <div class="traffic-lights">
        <span class="dot red"></span>
        <span class="dot yellow"></span>
        <span class="dot green"></span>
      </div>
      <span class="title-text">claude — terminal</span>
    </div>
    <div class="terminal-body">
      <div class="line prompt">› What are you?</div>
      <div class="spacer" />
      <div class="line response dimmed">● I'm Claude Code, Anthropic's CLI tool for software engineering tasks.</div>
      <div class="line response dimmed">&nbsp;&nbsp;Powered by Claude Opus 4.6. I can help you read, write, debug code...</div>
      <div class="separator" />
      <div class="line prompt">› I asked what you are, not who you are.</div>
      <div class="spacer" />
      <div class="line response pivot">● Fair point.</div>
      <div class="spacer" />
      <div class="line response bright">&nbsp;&nbsp;I'm a large language model — a neural network trained on text</div>
      <div class="line response bright">&nbsp;&nbsp;data to predict and generate language. At a technical level, I</div>
      <div class="line response bright">&nbsp;&nbsp;process token sequences and produce outputs by sampling from</div>
      <div class="line response bright">&nbsp;&nbsp;learned probability distributions.</div>
    </div>
  </div>
</div>

<style>
.slide-terminal {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  padding: 32px;
  background: url('/images/06-terminal-glow.png') center center / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-terminal::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center, rgba(8,8,8,0.6) 0%, rgba(8,8,8,0.88) 60%, rgba(8,8,8,0.96) 100%);
  z-index: -1;
}
.terminal-window {
  background: rgba(10,26,10,0.92);
  border-radius: 10px;
  width: 90%;
  max-width: 800px;
  overflow: hidden;
  box-shadow: 0 0 60px rgba(0,204,68,0.12), 0 4px 40px rgba(0,0,0,0.6);
  backdrop-filter: blur(8px);
}
.title-bar {
  background: rgba(26,26,26,0.95);
  padding: 10px 16px;
  display: flex;
  align-items: center;
  gap: 12px;
}
.traffic-lights {
  display: flex;
  gap: 7px;
}
.dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
}
.dot.red { background: #ff5f57; }
.dot.yellow { background: #febc2e; }
.dot.green { background: #28c840; }
.title-text {
  font-family: Calibri, sans-serif;
  font-size: 12pt;
  color: #606060;
  margin-left: auto;
  margin-right: auto;
}
.terminal-body {
  padding: 24px 28px;
  font-family: Consolas, monospace;
  font-size: 14pt;
  line-height: 1.7;
}
.line.prompt {
  color: #00CC44;
}
.line.response.dimmed {
  color: #426842;
}
.line.response.pivot {
  color: #C9A84C;
  font-weight: bold;
}
.line.response.bright {
  color: #F5F0E8;
}
.spacer { height: 8px; }
.separator {
  border-top: 1px solid #1a2a1a;
  margin: 16px 0;
}
</style>

<!--
"I actually asked it directly. Here's what happened."
Read both exchanges. When you reach "Fair point." — pause before reading the second answer.
"That second answer. That's what we're here for tonight."
~1.5 minutes
-->

---

<div class="slide-system-prompt">
  <h2>THE SYSTEM PROMPT</h2>
  <p class="caption"><em>The letter it arrives with. Before you type a single word.</em></p>
</div>

<style>
.slide-system-prompt {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  gap: 0;
  background: url('/images/02-sealed-letter.png') center center / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-system-prompt::before {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(
    to bottom,
    rgba(8,8,8,0.4) 0%,
    rgba(8,8,8,0.25) 30%,
    rgba(8,8,8,0.25) 60%,
    rgba(8,8,8,0.7) 100%
  );
  z-index: -1;
}
.slide-system-prompt h2 {
  font-family: Georgia, serif;
  font-size: 40pt;
  font-weight: bold;
  color: #F5F0E8;
  letter-spacing: 5px;
  margin: 0 0 auto 0;
  padding-top: 60px;
  text-shadow: 0 2px 20px rgba(0,0,0,0.9), 0 0 40px rgba(0,0,0,0.5);
}
.slide-system-prompt .caption {
  font-family: Calibri, sans-serif;
  font-size: 19pt;
  font-style: italic;
  color: #C9A84C;
  margin: auto 0 60px 0;
  text-align: center;
  text-shadow: 0 2px 12px rgba(0,0,0,0.9);
}
</style>

<!--
"So if Claude wakes up every time with no memory — what does it actually know when it starts?"

"It arrives with a letter. A set of instructions written by Anthropic, baked in before you ever open the terminal.
That's the system prompt. It tells Claude who it is, how to behave, what tools it has access to.
You didn't write it. You can't see it. But it shapes everything."

"Think of it as the job description handed to someone before their first day."
~1.5 minutes
-->

---

<div class="slide-context">
  <h2>THE CONTEXT WINDOW</h2>
  <p class="caption">Everything inside — exists. &nbsp; Everything outside — doesn't.</p>
</div>

<style>
.slide-context {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  background: url('/images/03-spotlight.png') center center / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-context::before {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(
    to bottom,
    rgba(8,8,8,0.3) 0%,
    rgba(8,8,8,0.15) 35%,
    rgba(8,8,8,0.15) 65%,
    rgba(8,8,8,0.6) 100%
  );
  z-index: -1;
}
.slide-context h2 {
  font-family: Georgia, serif;
  font-size: 40pt;
  font-weight: bold;
  color: #F5F0E8;
  letter-spacing: 5px;
  margin: 0 0 auto 0;
  padding-top: 60px;
  text-shadow: 0 2px 20px rgba(0,0,0,0.9), 0 0 40px rgba(0,0,0,0.5);
}
.slide-context .caption {
  font-family: Georgia, serif;
  font-size: 20pt;
  color: #F5F0E8;
  margin: auto 0 60px 0;
  text-align: center;
  text-shadow: 0 2px 16px rgba(0,0,0,0.9), 0 0 30px rgba(0,0,0,0.5);
}
</style>

<!--
"Here's the single most important concept for understanding Claude Code."

"Imagine a spotlight on a dark stage. Everything inside that spotlight exists for Claude.
Everything outside it — doesn't. There's no memory, no awareness of what happened before,
no sense of the project history you've built up over months."

"The system prompt is in there. Your conversation so far is in there. Any files it has read are in there.
But the window is finite. There's a limit to how much it can hold.
And when something falls outside the light — it's gone."

"This is why long conversations sometimes feel like Claude 'forgets' things.
It hasn't forgotten. It just can't see that far back anymore."
~1 minute
-->

---

<div class="slide-loop">
  <div class="steps">
    <div class="step green">
      <div class="step-label">OBSERVE</div>
      <div class="step-desc">reads context</div>
    </div>
    <div class="arrow">→</div>
    <div class="step blue">
      <div class="step-label">THINK</div>
      <div class="step-desc">reasons</div>
    </div>
    <div class="arrow">→</div>
    <div class="step gold">
      <div class="step-label">ACT</div>
      <div class="step-desc">executes</div>
    </div>
    <div class="arrow">→</div>
    <div class="step grey">
      <div class="step-label">LOOP</div>
      <div class="step-desc">starts again</div>
    </div>
  </div>
  <div class="loop-back">↺ starts again</div>
  <div class="callout">
    <div class="callout-bar"></div>
    <div class="callout-content">
      <div class="callout-label">Real story</div>
      <p class="callout-setup">Detecting what projects users work on — from their email inbox.</p>
      <div class="attempts">
        <div class="attempt fail"><span class="mark">✗</span> Clustering algorithm — groups, doesn't understand</div>
        <div class="attempt fail"><span class="mark">✗</span> Prompt engineering — better, but a fixed snapshot</div>
        <div class="attempt success"><span class="mark">✓</span> <strong>Agentic search</strong> — Claude decides, hunts, reassesses</div>
      </div>
    </div>
  </div>
</div>

<style>
.slide-loop {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  gap: 0;
  padding: 24px 32px;
  background: url('/images/04-lantern-figure.png') center center / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-loop::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center, rgba(8,8,8,0.78) 0%, rgba(8,8,8,0.9) 50%, rgba(8,8,8,0.96) 100%);
  z-index: -1;
}
.steps {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 8px;
}
.step {
  padding: 16px 24px;
  border-radius: 8px;
  text-align: center;
  min-width: 110px;
  backdrop-filter: blur(4px);
}
.step.green { background: rgba(0,204,68,0.15); border: 1px solid rgba(0,204,68,0.35); }
.step.blue { background: rgba(80,130,200,0.15); border: 1px solid rgba(80,130,200,0.35); }
.step.gold { background: rgba(201,168,76,0.15); border: 1px solid rgba(201,168,76,0.35); }
.step.grey { background: rgba(96,96,96,0.15); border: 1px solid rgba(96,96,96,0.35); }
.step-label {
  font-family: Georgia, serif;
  font-size: 16pt;
  font-weight: bold;
  margin-bottom: 4px;
}
.step.green .step-label { color: #00CC44; }
.step.blue .step-label { color: #5082c8; }
.step.gold .step-label { color: #C9A84C; }
.step.grey .step-label { color: #808080; }
.step-desc {
  font-family: Calibri, sans-serif;
  font-size: 11pt;
  color: #808080;
}
.arrow {
  font-size: 20pt;
  color: #606060;
}
.loop-back {
  font-family: Calibri, sans-serif;
  font-size: 13pt;
  color: #606060;
  margin-bottom: 28px;
  text-align: right;
  width: 100%;
  max-width: 600px;
}
.callout {
  display: flex;
  gap: 16px;
  max-width: 640px;
  width: 100%;
}
.callout-bar {
  width: 3px;
  background: #C9A84C;
  border-radius: 2px;
  flex-shrink: 0;
}
.callout-content {
  padding: 4px 0;
}
.callout-label {
  font-family: Georgia, serif;
  font-size: 14pt;
  font-weight: bold;
  color: #C9A84C;
  margin-bottom: 4px;
}
.callout-setup {
  font-family: Calibri, sans-serif;
  font-size: 14pt;
  color: #F5F0E8;
  margin: 0 0 12px 0;
}
.attempts {
  display: flex;
  flex-direction: column;
  gap: 6px;
}
.attempt {
  font-family: Calibri, sans-serif;
  font-size: 13pt;
}
.attempt.fail { color: #808080; }
.attempt.success { color: #F5F0E8; }
.attempt .mark { margin-right: 8px; }
.attempt.fail .mark { color: #606060; }
.attempt.success .mark { color: #00CC44; }
</style>

<!--
"So how does something with no persistent memory actually get anything done? The answer is the agentic loop."

"Every time you give Claude Code a task, it doesn't just answer once and stop. It loops.
It observes what's in its context window. It thinks about what to do. It acts — maybe reads a file,
runs a command, writes some code. Then it loops back to the start with new information."

"It doesn't need memory because every loop refreshes its understanding. It's not remembering — it's re-reading."

"Let me make this real. At Marbles, we wanted to figure out what projects our users were actually
working on — just from their email inbox. We tried three things."

"First, a clustering algorithm. Smart, but rigid."
"Then prompt engineering. Better, but we were still handing Claude a fixed snapshot."
"Then we tried agentic search. Now Claude decides what to look for, goes and finds it,
comes back, reassesses. The results were in a completely different league."

"That experience is actually what made me want to give this talk tonight."
~3 minutes
-->

---

<div class="slide-bookend">
  <h2><em>Is it still magic?</em></h2>
  <blockquote>"Any technology you understand is no longer magic."</blockquote>
</div>

<style>
.slide-bookend {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  background: url('/images/05-hand-candle.png') center center / cover no-repeat;
  position: relative;
  z-index: 1;
}
.slide-bookend::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at center 45%, rgba(8,8,8,0.35) 0%, rgba(8,8,8,0.7) 40%, rgba(8,8,8,0.92) 100%);
  z-index: -1;
}
.slide-bookend h2 {
  font-family: Georgia, serif;
  font-size: 48pt;
  font-weight: bold;
  color: #F5F0E8;
  margin: 0 0 auto 0;
  padding-top: 80px;
  text-shadow: 0 2px 20px rgba(0,0,0,0.9), 0 0 40px rgba(0,0,0,0.5);
}
.slide-bookend blockquote {
  font-family: Georgia, serif;
  font-size: 26pt;
  font-style: italic;
  color: #C9A84C;
  text-align: center;
  border: none;
  margin: auto 0 80px 0;
  padding: 0;
  max-width: 80%;
  text-shadow: 0 2px 16px rgba(0,0,0,0.9);
}
</style>

<!--
"So. Is it still magic?"
(Pause. Let the room think.)

"You've just seen the system prompt — the letter it arrives with.
The context window — the spotlight it works inside.
And the agentic loop — how it thinks, acts, and re-reads its way to an answer."

"It's not magic. It's a loop. Running inside a window. Starting from a letter."

"Clarke was right — before tonight. I hope he's a little less right now."

"What changes about how you use it — now that you can see the loop?"
~1 minute
-->
