function [dataPaths] = get_dataPaths(exptName,svec,varargin)
%GET_ACOUSTPATHS  Get path to acoustic data for multiple subjects.

dataPaths = cell(1,length(svec));

for s=1:length(svec)
    if isnumeric(svec)
        dataPaths{s} = get_acoustLoadPath(exptName,svec(s),varargin{:});
    else
        dataPaths{s} = get_acoustLoadPath(exptName,svec{s},varargin{:});
    end
end

% if single subject, return string instead of cell array
if length(dataPaths)==1
    dataPaths = dataPaths{1};
end