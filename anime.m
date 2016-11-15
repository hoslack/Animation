%read images
 a=imread('image_part_001.jpg');
 b=imread('image_part_002.jpg');
 c=imread('image_part_003.jpg');
 d=imread('image_part_004.jpg');
 e=imread('image_part_005.jpg');
 f=imread('image_part_006.jpg');
 g=imread('image_part_007.jpg');
 h=imread('image_part_008.jpg');
 i=imread('image_part_009.jpg');
 j=imread('image_part_010.jpg');
 k=imread('image_part_011.jpg');
 l=imread('image_part_012.jpg');
 m=imread('image_part_013.jpg');
 n=imread('image_part_014.jpg');
 o=imread('image_part_015.jpg');
 p=imread('image_part_016.jpg');
 q=imread('image_part_017.jpg');
 r=imread('image_part_018.jpg');
 s=imread('image_part_019.jpg');
 t=imread('image_part_020.jpg');
 u=imread('image_part_021.jpg');
 v=imread('image_part_022.jpg');
 w=imread('image_part_023.jpg');
 x=imread('image_part_024.jpg');
 y=imread('image_part_025.jpg');
 z=imread('image_part_026.jpg');
 ab=imread('image_part_027.jpg');
 cd=imread('image_part_028.jpg');
 
 
 images{1} = imresize(a,[99 109],'nearest');
 images{2} = imresize(b,[99 109],'nearest');
 images{3} = imresize(c,[99 109],'nearest');
 images{4} = imresize(d,[99 109],'nearest');
 images{5} = imresize(e,[99 109],'nearest');
 images{6} = imresize(f,[99 109],'nearest');
 images{7} = imresize(g,[99 109],'nearest');
 images{8} = imresize(h,[99 109],'nearest');
 images{9} = imresize(i,[99 109],'nearest');
 images{10} = imresize(j,[99 109],'nearest');
 images{11} = imresize(k,[99 109],'nearest');
 images{12} = imresize(l,[99 109],'nearest');
 images{13} = imresize(m,[99 109],'nearest');
 images{14} = imresize(n,[99 109],'nearest');
 images{15} = imresize(o,[99 109],'nearest');
 images{16} = imresize(p,[99 109],'nearest');
 images{17} = imresize(q,[99 109],'nearest');
 images{18} = imresize(r,[99 109],'nearest');
 images{19} = imresize(s,[99 109],'nearest');
 images{20} = imresize(t,[99 109],'nearest');
 images{21} = imresize(u,[99 109],'nearest');
 images{22} = imresize(v,[99 109],'nearest');
 images{23} = imresize(w,[99 109],'nearest');
 images{24} = imresize(x,[99 109],'nearest');
 images{25} = imresize(y,[99 109],'nearest');
 images{26} = imresize(z,[99 109],'nearest');
 images{27} = imresize(ab,[99 109],'nearest');
 images{28} = imresize(cd,[99 109],'nearest');
 
 % create the video writer with 30 fps
writerObj = VideoWriter('animation.avi');
writerObj.FrameRate = 30;
open(writerObj);
 
n = length(images);
secsPerImage = [15 5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 4 5 5];
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