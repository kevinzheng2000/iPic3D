function [V,V2,V3,V4,V5,V6,V7,V8,V9,V10]=read_vtk_multiscalar(filename,numvar)
fid = fopen(filename,'r');
fgetl(fid); % # vtk DataFile Version x.x
fgetl(fid); % comments
fgetl(fid); % ASCII
fgetl(fid); % DATASET STRUCTURED_POINTS

s = fgetl(fid); % DIMENSIONS NX NY NZ
sz = sscanf(s, '%*s%d%d%d').'

fgetl(fid); % ORIGIN OX OY OZ
s=fgetl(fid); % SPACING SX SY SZ
dd = sscanf(s, '%*s%d%d%d').'
s=fgetl(fid); % POINT_DATA NXNYNZ
npoints = sscanf(s, '%*s%d%d%d').'

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1)
dtstr = sscanf(s, '%*s%*s%s')

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V=[];
%for np=1:npoints
%s=fgetl(fid); 
%V = [V;sscanf(s, '%g').'];
%end
V=fscanf(fid,' %f', [npoints, 1]);
V=reshape(V,sz(1),sz(2));
end



s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V2=[];
%for np=1:npoints
%s=fgetl(fid); 
%V2 = [V2;sscanf(s, '%g').'];
%end
V2=fscanf(fid,' %f', [npoints, 1]);
V2=reshape(V2,sz(1),sz(2));
end
	  
	  
if (numvar==2) 
	  return 
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V3=[];
%for np=1:npoints
%s=fgetl(fid); 
%V3 = [V3;sscanf(s, '%g').'];
%end
V3=fscanf(fid,' %f', [npoints, 1]);
V3=reshape(V3,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V4=[];
%for np=1:npoints
%s=fgetl(fid); 
%V4 = [V4;sscanf(s, '%g').'];
%end
V4=fscanf(fid,' %f', [npoints, 1]);
V4=reshape(V4,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V5=[];
%for np=1:npoints
%s=fgetl(fid); 
%V5 = [V5;sscanf(s, '%g').'];
%end
V5=fscanf(fid,' %f', [npoints, 1]);
V5=reshape(V5,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V6=[];
%for np=1:npoints
%s=fgetl(fid); 
%V6 = [V6;sscanf(s, '%g').'];
%end
V6=fscanf(fid,' %f', [npoints, 1]);
V6=reshape(V6,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V7=[];
%for np=1:npoints
%s=fgetl(fid); 
%V7 = [V7;sscanf(s, '%g').'];
%end
V7=fscanf(fid,' %f', [npoints, 1]);
V7=reshape(V7,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V8=[];
%for np=1:npoints
%s=fgetl(fid); 
%V8 = [V8;sscanf(s, '%g').'];
%end
V8=fscanf(fid,' %f', [npoints, 1]);
V8=reshape(V8,sz(1),sz(2));
end


s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V9=[];
%for np=1:npoints
%s=fgetl(fid); 
%V9 = [V9;sscanf(s, '%g').'];
%end
V9=fscanf(fid,' %f', [npoints, 1]);
V9=reshape(V9,sz(1),sz(2));
end

s = fgetl(fid); % SCALARS/VECTORS name data_type (ex: SCALARS imagedata unsigned_char)
svstr = sscanf(s, '%s', 1);
dtstr = sscanf(s, '%*s%*s%s');

if( strcmp(svstr,'SCALARS') > 0 )
fgetl(fid); % the lookup table
V10=[];
%for np=1:npoints
%s=fgetl(fid); 
%V10 = [V10;sscanf(s, '%g').'];
%end
V10=fscanf(fid,' %f', [npoints, 1]);
V10=reshape(V10,sz(1),sz(2));
end

fclose(fid);


