% Funktion der importere excel ark som
% Dataset i et map.
% Udviklet med hjaelp fra Kelvin Carman
function mapObj=imp(x)
    cd(x)
    files = dir('*.csv');
    keySet={};
    valueSet={};
    for i=1:length(files)
        keySet{i}=files(i).name;
        valueSet{i}=dataset('File',files(i).name,'Delimiter',',');
    end
    mapObj=containers.Map(keySet,valueSet);
end