function varargout = sin(varargin)
% SIN M-file for sin.fig
%      SIN, by itself, creates a new SIN or raises the existing
%      singleton*.
%
%      H = SIN returns the handle to a new SIN or the handle to
%      the existing singleton*.
%
%      SIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIN.M with the given input arguments.
%
%      SIN('Property','Value',...) creates a new SIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sin

% Last Modified by GUIDE v2.5 06-Apr-2015 07:31:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sin_OpeningFcn, ...
                   'gui_OutputFcn',  @sin_OutputFcn, ...
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


% --- Executes just before sin is made visible.
function sin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sin (see VARARGIN)

% Choose default command line output for sin
handles.output = hObject;

imshow('sine3.png')
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes sin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function from_Callback(hObject, eventdata, handles)
% hObject    handle to from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of from as text
%        str2double(get(hObject,'String')) returns contents of from as a double


% --- Executes during object creation, after setting all properties.
function from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function step_Callback(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of step as text
%        str2double(get(hObject,'String')) returns contents of step as a double


% --- Executes during object creation, after setting all properties.
function step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function to_Callback(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of to as text
%        str2double(get(hObject,'String')) returns contents of to as a double


% --- Executes during object creation, after setting all properties.
function to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frequancy_Callback(hObject, eventdata, handles)
% hObject    handle to frequancy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frequancy as text
%        str2double(get(hObject,'String')) returns contents of frequancy as a double


% --- Executes during object creation, after setting all properties.
function frequancy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequancy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitude as text
%        str2double(get(hObject,'String')) returns contents of amplitude as a double


% --- Executes during object creation, after setting all properties.
function amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(isempty(get(handles.amplitude,'string')))
    amplitude = 1;
else
amplitude = str2num(get(handles.amplitude,'string'));
end
if(isempty(get(handles.frequancy,'string')))
    frq = 1;
else
frq = str2num(get(handles.frequancy,'string'));
end
if(isempty(get(handles.from,'string')))
    t1 = 0;
else
t1 = str2num(get(handles.from,'string'));
end
if(isempty(get(handles.to,'string')))
    t2 = 2;
else
t2 = str2num(get(handles.to,'string'));
end
if(isempty(get(handles.step,'string')))
    stp = 0.01;
else
stp = str2num(get(handles.step,'string'));
end
if(isempty(get(handles.shift,'string')))
    shift = 0;
else
shift = str2num(get(handles.shift,'string'));
end
choice = 0;
if (get(handles.discrete,'Value'))
choice = 2;
end
if (get(handles.continious,'Value'))
    choice = 1;
end
if (get(handles.discrete,'Value') && get(handles.continious,'Value'))
    choice = 0;
end
if choice == 0
   n = questdlg('please specify plotting format','Warning','OK','OK')
end
plotsin(amplitude , frq , t1 , t2 , stp , shift , choice);



function shift_Callback(hObject, eventdata, handles)
% hObject    handle to shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of shift as text
%        str2double(get(hObject,'String')) returns contents of shift as a double


% --- Executes during object creation, after setting all properties.
function shift_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mainmenu
hf=findobj('Name','sin');
close(hf)


% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('are you sure you wan to quit the program','Exit Dialogue','YES','NO','NO')
if choice == 'YES'
hf=findobj('Name','sin');
close(hf)
end


% --- Executes on button press in discrete.
function discrete_Callback(hObject, eventdata, handles)
% hObject    handle to discrete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of discrete


% --- Executes on button press in continious.
function continious_Callback(hObject, eventdata, handles)
% hObject    handle to continious (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of continious


% --- Executes on slider movement.
function ampsl_Callback(hObject, eventdata, handles)
% hObject    handle to ampsl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%amplitude = get(handles.ampsl,'value');
%if(isempty(get(handles.amplitude,'string')))
 %   amplitude = 1;
%else
%amplitude = str2num(get(handles.amplitude,'string'));
%end
if(isempty(get(handles.frequancy,'string')))
    frq = 1;
else
frq = str2num(get(handles.frequancy,'string'));
end
if(isempty(get(handles.from,'string')))
    t1 = 0;
else
t1 = str2num(get(handles.from,'string'));
end
if(isempty(get(handles.to,'string')))
    t2 = 2;
else
t2 = str2num(get(handles.to,'string'));
end
if(isempty(get(handles.step,'string')))
    stp = 0.01;
else
stp = str2num(get(handles.step,'string'));
end
if(isempty(get(handles.shift,'string')))
    shift = 0;
else
shift = str2num(get(handles.shift,'string'));
end
choice = 0;
if (get(handles.discrete,'Value'))
choice = 2;
end
if (get(handles.continious,'Value'))
    choice = 1;
end
if (get(handles.discrete,'Value') && get(handles.continious,'Value'))
    choice = 0;
end
if choice == 0
   n = questdlg('please specify plotting format','Warning','OK','OK')
end
amplitude = get(handles.ampsl,'value');
[t,x] = plotsinconc(amplitude , frq , t1 , t2 , stp , shift);
plot(t,x)



% --- Executes during object creation, after setting all properties.
function ampsl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampsl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
