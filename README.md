frereth-communicator
====================

The parts of Frereth that communicate elsewhere

This piece is a lot more interesting than it probably
seems from its lack of activity so far.

Here's my latest plan for it:

1. Start up, kick off a connection to frereth-renderer
to show the splash screen.
2. Long-term, I'd like it to start a VM (or so) running 
frereth-client and frereth-server. For now, just start
them manually.
3. Find out the window state: number, location, etc.
Torn between tracking that here and at the server.
There's some overlap of concerns.
4. Kick off the appropriate associated frereth-renderer
windows.
5. Each window is, really, its own thread. It will
communicate through here with frereth-client.
6. Rendering is inherently single-threaded. So there
are all sorts of interesting little tidbits to be
controlled through here.

Have to track the active window (although, hopefully,
the renderer can handle that part). But also need to
know which windows need to be updated because of
notifications from the server, or just because the
animation timer has clicked, or user interaction (though
that last is really the renderer's responsibility).

Then we have to come up with some sort of 
plan for redrawing any windows. Do a round robin with
unfocused windows that aren't minimized, maybe?
(Focused window obviously gets top priority).
