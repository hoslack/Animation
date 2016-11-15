%read images
 images{1} = imread('1A.png');
 images{2} = imread('1.png');
 images{3} = imread('2.png');
 images{4} = imread('3.png');
 images{5} = imread('3A.png');
 images{6} = imread('4.png');
 images{7} = imread('4A.png');
 images{8} = imread('4B.png');
 images{9} = imread('4A.png');
 images{10} = imread('4B.png');
 images{11} = imread('4.png');
 
 % create the video writer with 30 fps
writerObj = VideoWriter('animation.avi');
writerObj.FrameRate = 30;
open(writerObj);
 
n = length(images);
secsPerImage = [15 4 4 5 5 2 2 2 2 2 10];
for i=1:2 %loop animation 2 times
    for u=1:n
    frame = im2frame(images{u});
        for v=1:secsPerImage(u)
         writeVideo(writerObj, frame); 
             imshow(images{u});
             drawnow;
        end
    end
end

close(writerObj);
implay('animation.avi');