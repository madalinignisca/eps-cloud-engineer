# Some additional notes

1. The deployment container is scanned before getting deployed. If there is a high severity vulnerability the pipeline should stop as a failure.

I'd like to brainstorm this topic. My idea is that the container image scanning is in the responsability of registry or a system scheduled to scan them.

I will experiment with this topic, as it made me think that the requirement was to do pre-scan on the admission.

3. Scan the application repository code to see static code analysis in the pipeline.

This is a topic I have not dived into yet, but I'm happy to harvest the knowledge fast on it.
