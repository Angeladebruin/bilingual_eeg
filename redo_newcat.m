root = 'C:\Users\Angdbru\Documents\PhD\Priming\EEG data priming study\limo\txt files';
for subject=1:22
    if sum([subject~=11,subject~=15])==2
        filepath = [root filesep 'S' num2str(subject)];
        if subject == 1
            load([filepath filesep 'categorical_S1.txt'])
            categoricalS1(categoricalS1(:,2)==1,2) = 2;
            categoricalS1(categoricalS1(:,2)==0,2) = 1;
            categoricalS1(categoricalS1(:,2)==2,2) = 0;
            save([filepath filesep 'newcategorical.txt'],'categorical_S1','-ascii')
        elseif subject == 18
            load([filepath filesep 'S18.txt'])
            categoricalS1(S18(:,2)==1,2) = 2;
            categoricalS1(S18(:,2)==0,2) = 1;
            categoricalS1(S18(:,2)==2,2) = 0;
            save([filepath filesep 'newcategorical.txt'],'S18','-ascii')
        else
            load([filepath filesep 'categorical.txt'])
            categorical(categorical(:,2)==1,2) = 2;
            categorical(categorical(:,2)==0,2) = 1;
            categorical(categorical(:,2)==2,2) = 0;
            save([filepath filesep 'newcategorical.txt'],'categorical','-ascii')
        end
    end
end

