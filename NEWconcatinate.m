function varargout = concatinate(varargin)
% CONCATINATE MATLAB code for concatinate.fig
%      CONCATINATE, by itself, creates a new CONCATINATE or raises the existing
%      singleton*.
%
%      H = CONCATINATE returns the handle to a new CONCATINATE or the handle to
%      the existing singleton*.
%
%      CONCATINATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONCATINATE.M with the given input arguments.
%
%      CONCATINATE('Property','Value',...) creates a new CONCATINATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before concatinate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to concatinate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help concatinate

% Last Modified by GUIDE v2.5 15-May-2015 14:55:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @concatinate_OpeningFcn, ...
                   'gui_OutputFcn',  @concatinate_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT
global c 


% --- Executes just before concatinate is made visible.
function concatinate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to concatinate (see VARARGIN)

% Choose default command line output for concatinate
handles.output = hObject;
global T 
T = [];
global X
X = [];
global c
c=0;
grid on;




% Update handles structure
guidata(hObject, handles);

% UIWAIT makes concatinate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = concatinate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in FunctionDrop.
function FunctionDrop_Callback(hObject, eventdata, handles)
% hObject    handle to FunctionDrop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FunctionDrop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FunctionDrop
switch (get(hObject,'value'))
    case 1
       
        prompt = {'From : ', 'TO : ','Step : ','Frequancy : ','Amplitude : '};
     dlg_title = 'Cosine editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
       [t,x] = plotcosconc(input{5},input{4},input{1},input{2},input{3},input{6})
    case 'Sin'
         prompt = {'From : ', 'TO : ','Step : ','Frequancy : ','Amplitude : '};
        dlg_title = 'Sine editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'Ramp'
         prompt = {'From : ', 'TO : ','Step : ','Slope : ','Amplitude : '};
        dlg_title = 'Ramp editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'Impulse'
         prompt = {'From : ', 'TO : ','Step : ','Location '};
        dlg_title = 'Impulse editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'Unit Step'
         prompt = {'From : ', 'TO : ','Step : ','Shift : ','Amplitude : '};
        dlg_title = 'Unit Step editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'DC'
         prompt = {'From : ', 'TO : ','Step : ','Amplitude : '};
        dlg_title = 'DC editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'Rectangular'
         prompt = {'From : ', 'TO : ','Step : ','Center : ','Amplitude : ','Width : '};
        dlg_title = 'Rectangular editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
    case 'Exponential'
         prompt = {'From : ', 'TO : ','Step : ','Exponent : ','Amplitude : '};
        dlg_title = 'Exponential editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
end






% --- Executes during object creation, after setting all properties.
function FunctionDrop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FunctionDrop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
switch (get(handles.listbox3,'value'))
    case 1
      
        prompt = {'From : ', 'TO : ','Step : ','Frequancy : ','Amplitude : ','Shift : '};
       dlg_title = 'Cosine editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotcosconc(input{5},input{4},input{1},input{2},input{3},input{6});
    case 2
         prompt = {'From : ', 'TO : ','Step : ','Frequancy : ','Amplitude : ','Shift : '};
        dlg_title = 'Sine editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotsinconc(input{5},input{4},input{1},input{2},input{3},input{6});
    case 3
         prompt = {'From : ', 'TO : ','Step : ','Slope : ','Shift :  '};
        dlg_title = 'Ramp editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotrampconc(input{4},input{1},input{2},input{5},input{3});
        
    case 4
         prompt = {'From : ', 'TO : ','Step : ','Location '};
        dlg_title = 'Impulse editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotimpconc(input{1},input{2},input{3},input{4});
    case 5
         prompt = {'Start : ','Step : ','Amplitude : '};
        dlg_title = 'Unit Step editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotuistpconc(input{3},input{1},input{2});
    case 6
         prompt = {'From : ', 'TO : ','Step : ','Amplitude : '};
        dlg_title = 'DC editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotdccocnc(input{4},input{1},input{2},input{3});
        
    case 7
         prompt = {'From : ', 'TO : ','Step : ','Center : ','Amplitude : ','Width : '};
        dlg_title = 'Rectangular editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotRectconc(input{1},input{2},input{3},input{5},input{6},input{4});
    case 8
         prompt = {'From : ', 'TO : ','Step : ','Exponent : ','Amplitude : ','Shift'};
        dlg_title = 'Exponential editor';
        input = inputdlg(prompt,dlg_title);
        for i=1:size(input)
            input{i} = str2num(input{i});
        end
        [t,x] = plotexpoconc (input{5},input{1},input{2},input{3},input{4},input{6});
end
X = [X,x];
T = [T,t];

%axis ([-10 10 -10 10]);
if (get(handles.radiobutton13,'Value'))
    axes(handles.secondgraph);
plot(T,X);
grid on ;
    
end
if (get(handles.radiobutton12,'Value'))
    axes(handles.firstgraph);
plot(T,X);
grid on ;
    
end






% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
global T
T = [];
global X
X = [];
global c
c=0;


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X

global c



 prompt = {'From(def = 0) : ', 'TO(def = 2) : ','Step(def = 0.01) : ','Frequancy(def = 0.5) : ','Amplitude(def = 1) : ','Shift(def = 0) : '};
        title = 'Sine';
        
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
        if isempty(data{5})
            data{5} = 1;
        end
        if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.01;
        end
        if isempty(data{4})
            data{4} = 0.5;
        end
        if isempty(data{6})
            data{6} = 0;
        end
        [t,x] = plotsinconc(data{5},data{4},data{1},data{2},data{3},data{6});
        
        
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];

if (get(handles.radiobutton12,'Value'))
    axes(handles.secondgraph);
H = plot(T,X,'r','LineWidth',3);
grid on ;
    
end
if (get(handles.radiobutton13,'Value'))
    axes(handles.firstgraph);
H = plot(T,X,'r','LineWidth',3);
grid on ;
    
end
end
grid on ;


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c
 prompt = {'From(def = 0) : ', 'TO(def = 2) : ','Step(def = 0.01) : ','Frequancy(def = 0.5) : ','Amplitude(def = 1) : ','Shift(def = 0) : '};
       title = 'Cosine';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{5})
            data{5} = 1;
        end
        if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.01;
        end
        if isempty(data{4})
            data{4} = 0.5;
        end
        if isempty(data{6})
            data{6} = 0;
        end
        [t,x] = plotcosconc(data{5},data{4},data{1},data{2},data{3},data{6});
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;


% --- Executes on button press in exponential.
function exponential_Callback(hObject, eventdata, handles)
% hObject    handle to exponential (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c
prompt = {'From(def = 0) : ', 'TO(def = 2) : ','Step(def = 0.01) : ','Exponent(def = 1) : ','Amplitude(def = 1) : ','Shift'};
        title = 'Exponential';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{5})
            data{5} = 1;
        end
        if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.01;
        end
        if isempty(data{4})
            data{4} = 1;
        end
        if isempty(data{6})
            data{6} = 0;
        end
        [t,x] = plotexpoconc (data{5},data{1},data{2},data{3},data{4},data{6});
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
%axis ([-10 10 -10 10]);
grid on ;


% --- Executes on button press in rectangular.
function rectangular_Callback(hObject, eventdata, handles)
% hObject    handle to rectangular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c
prompt = {'From(def = -2) : ', 'TO(def = 2) : ','Step(def = 0.01) : ','Center(def = 0) : ','Amplitude(def = 1) : ','Width(def = 2) : '};
        title = 'Rectangular';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{5})
            data{5} = 1;
        end
        if isempty(data{1})
            data{1} = -2;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.01;
        end
        if isempty(data{4})
            data{4} = 0;
        end
        if isempty(data{6})
            data{6} = 2;
        end
        [t,x] = plotRectconc(data{1},data{2},data{3},data{5},data{6},data{4});
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;


% --- Executes on button press in dc.
function dc_Callback(hObject, eventdata, handles)
% hObject    handle to dc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c
 prompt = {'From(def = 0) : ', 'TO(def = 2) : ','Step(def = 0.1) : ','Amplitude(def = 1) : '};
        title = 'DC';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.1;
        end
        if isempty(data{4})
            data{4} = 1;
        end
        
        [t,x] = plotdccocnc(data{4},data{1},data{2},data{3});
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;


% --- Executes on button press in unitstep.
function unitstep_Callback(hObject, eventdata, handles)
% hObject    handle to unitstep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c
 prompt = {'Start(def = 0) : ','Step(def = 0.01) : ','Amplitude(def = 1) : '};
        title = 'Unit Step';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 0.01;
        end
        if isempty(data{3})
            data{3} = 1;
        end
        [t,x] = plotuistpconc(data{3},data{1},data{2});
c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;


% --- Executes on button press in impulse.
function impulse_Callback(hObject, eventdata, handles)
% hObject    handle to impulse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c

 prompt = {'From(def = 0) : ', 'TO(def = 10) : ','Location(def = 5) : '};
        title = 'Impulse';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 10;
        end
        if isempty(data{3})
            data{3} = 5;
        end
        [t,x] = plotimpconc(data{1},data{2},0.01,data{3});

c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;



% --- Executes on button press in ramp.
function ramp_Callback(hObject, eventdata, handles)
% hObject    handle to ramp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X
global c

  prompt = {'From(def = 0) : ', 'TO(def = 2) : ','Step(def = 0.01) : ','Slope(def = 1) : ','Shift(def = 0) :  '};
        title = 'Ramp';
        data = inputdlg(prompt,title);
        for i=1:size(data)
            data{i} = str2num(data{i});
        end
         if isempty(data{1})
            data{1} = 0;
        end
        if isempty(data{2})
            data{2} = 2;
        end
        if isempty(data{3})
            data{3} = 0.01;
        end
         if isempty(data{4})
            data{4} = 1;
        end
        if isempty(data{5})
            data{5} = 0;
        end
        [t,x] = plotrampconc(data{4},data{1},data{2},data{5},data{3})
     c = c + 1;
if(isempty(get(handles.plotno,'string')))
    limit = 0;
else
limit = str2num(get(handles.plotno,'string'));
end

if  c > limit
    choice = questdlg('error in number of plots field','Error Message','OK','OK')
    if choice == 'OK'
        c=c-1;
    end
else
X = [X,x];
T = [T,t];
H = plot(T,X,'r','LineWidth',3);
end
grid on ;


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mainmenu
hf=findobj('Name','concatinate');
close(hf)



% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('are you sure you want to quit the program','Exit Dialogue','YES','NO','NO')
if choice == 'YES'
hf=findobj('Name','concatinate');
close(hf)
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function amplitudesl_Callback(hObject, eventdata, handles)
% hObject    handle to amplitudesl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%global amp
%global XData
%global YData
%amp = get(handles.amplitudesl,'value');



%plot(handles.firstgraph,T,X);

% --- Executes during object creation, after setting all properties.
function amplitudesl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitudesl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in discrete.
function discrete_Callback(hObject, eventdata, handles)
% hObject    handle to discrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of discrete

    


% --- Executes on button press in contin.
function contin_Callback(hObject, eventdata, handles)
% hObject    handle to contin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of contin




function plotno_Callback(hObject, eventdata, handles)
% hObject    handle to plotno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plotno as text
%        str2double(get(hObject,'String')) returns contents of plotno as a double


% --- Executes during object creation, after setting all properties.
function plotno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of D
global T
global X
grid on;
if (get(handles.D,'Value'))
    cla;
    stem(T,X)
end


% --- Executes on button press in DD.
function DD_Callback(hObject, eventdata, handles)
% hObject    handle to DD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X

cla;
H = stem(T,X,'r','LineWidth',1);
grid on;


% --- Executes on button press in CC.
function CC_Callback(hObject, eventdata, handles)
% hObject    handle to CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T
global X

cla
H = plot(T,X,'r','LineWidth',3);
grid on;


% --- Executes on slider movement.
function shifting_Callback(hObject, eventdata, handles)
% hObject    handle to shifting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global T
global X
cla;
plot(T+get(handles.shifting,'value'),X,'r','LineWidth',3);
grid on;


% --- Executes during object creation, after setting all properties.
function shifting_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shifting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in conv.
function conv_Callback(hObject, eventdata, handles)
% hObject    handle to conv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
