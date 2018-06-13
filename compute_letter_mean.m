function letter_mean = compute_letter_mean(letter_char, Alphabet, images, labels)
% img = compute_letter_mean(letter_char, Alphabet, images, labels)
%
% Compute mean image for a letter.
%
% Parameters:
%   letter_char         character, e.g. 'm'
%   Alphabet            list of all characters present in images, e.g. 'abcdefgh'
%   images              images of letters, matrix of size (height x width x number of images)
%   labels              image labels, vector of size <number of images>; <label> is index to <Alphabet>
%
% Return:
%   letter_mean         mean of all images of the <letter_char>, uint8 type

    letter_finder_1 = find(Alphabet == letter_char)
    
    find_labels_letter_1 = find(labels==letter_finder_1)
    

    img_per_letter = images(:,:,find_labels_letter_1)
    
    letter_mean = uint8(mean(img_per_letter,3))
    
end