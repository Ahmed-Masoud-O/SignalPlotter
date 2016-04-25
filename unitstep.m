function varargout = unitstep(varargin)
% UNITSTEP M-file for unitstep.fig
%      UNITSTEP, by itself, creates a new UNITSTEP or raises the existing
%      singleton*.
%
%      H = UNITSTEP returns the handle to a new UNITSTEP or the handle to
%      the existing singleton*.
%
%      UNITSTEP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNITSTEP.M with the given input arguments.
%
%      UNITSTEP('Property','Value',...) creates a new UNITSTEP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before unitstep_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to unitstep_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help unitstep

% Last Modified by GUIDE v2.5 17-Mar-2015 11:51:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @unitstep_OpeningFcn, ...
                   'gui_OutputFcn',  @unitstep_OutputFcn, ...
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


% --- Executes just before unitstep is made visible.
function unitstep_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to unitstep (see VARARGIN)

% Choose default command line output for unitstep
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
imshow('unitstep.png');

% UIWAIT makes unitstep wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = unitstep_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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
if(isempty(get(handles.startpos,'string')))
    start = 0;
else
start = str2num(get(handles.startpos,'string'));
end
if(isempty(get(handles.amplitude,'string')))
    amplitude = 1;
else
amplitude = str2num(get(handles.amplitude,'string'));
end
if(isempty(get(handles.step,'string')))
    stp = 0.001;
else
stp = str2num(get(handles.step,'string'));
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
    
plotuistp(amplitude,start,choice,stp)

        



function startpos_Callback(hObject, eventdata, handles)
% hObject    handle to startpos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startpos as text
%        str2double(get(hObject,'String')) returns contents of startpos as a double


% --- Executes during object creation, after setting all properties.
function startpos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startpos (see GCBO)
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
hf=findobj('Name','unitstep');
close(hf)


% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('are you sure you want to quit the program','Exit Dialogue','YES','NO','NO')
if choice == 'YES'
hf=findobj('Name','unitstep');
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
