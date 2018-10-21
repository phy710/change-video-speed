clear;
clc;

video= VideoReader('video.mp4');
vidWidth = video.Width;
vidHeight = video.Height;
fps = video.FrameRate;

out = VideoWriter('out', 'MPEG-4');
out.FrameRate = fps*1.15;
open(out);
while hasFrame(video)
    writeVideo(out, readFrame(video));
end
close(out);