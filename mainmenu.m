function varargout = mainmenu(varargin)
% MAINMENU M-file for mainmenu.fig
%      MAINMENU, by itself, creates a new MAINMENU or raises the existing
%      singleton*.
%
%      H = MAINMENU returns the handle to a new MAINMENU or the handle to
%      the existing singleton*.
%
%      MAINMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINMENU.M with the given input arguments.
%
%      MAINMENU('Property','Value',...) creates a new MAINMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainmenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainmenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainmenu

% Last Modified by GUIDE v2.5 23-Mar-2015 09:39:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainmenu_OpeningFcn, ...
                   'gui_OutputFcn',  @mainmenu_OutputFcn, ...
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


% --- Executes just before mainmenu is made visible.
function mainmenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainmenu (see VARARGIN)

% Choose default command line output for mainmenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainmenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainmenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sinwave.
function sinwave_Callback(hObject, eventdata, handles)
% hObject    handle to sinwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sinwave
    sin
    h=findobj('Name','mainmenu');
close(h)



% --- Executes on button press in cosinewave.
function cosinewave_Callback(hObject, eventdata, handles)
% hObject    handle to cosinewave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cos
hf=findobj('Name','mainmenu');
close(hf)


% Hint: get(hObject,'Value') returns toggle state of cosinewave


% --- Executes on selection change in listbox1.


% --- Executes on button press in ramp.
function ramp_Callback(hObject, eventdata, handles)
% hObject    handle to ramp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ramp
ramp
hf=findobj('Name','mainmenu');
close(hf)


% --- Executes on button press in quit.
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('are you sure you want to quit the program','Exit Dialogue','YES','NO','NO')
if choice == 'YES'
hf=findobj('Name','mainmenu');
close(hf)
end


% --- Executes on button press in unitstep.
function unitstep_Callback(hObject, eventdata, handles)
% hObject    handle to unitstep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
unitstep
hf=findobj('Name','mainmenu');
close(hf)


% Hint: get(hObject,'Value') returns toggle state of unitstep


% --- Executes on button press in expo.
function expo_Callback(hObject, eventdata, handles)
% hObject    handle to expo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
expo
hf=findobj('Name','mainmenu');
close(hf)


% Hint: get(hObject,'Value') returns toggle state of expo


% --- Executes on button press in dc.
function dc_Callback(hObject, eventdata, handles)
% hObject    handle to dc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
directcurrent
hf=findobj('Name','mainmenu');
close(hf)



% Hint: get(hObject,'Value') returns toggle state of dc


% --- Executes on button press in rectangular.
function rectangular_Callback(hObject, eventdata, handles)
% hObject    handle to rectangular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rectangular
h=findobj('Name','mainmenu');
close(h)

% Hint: get(hObject,'Value') returns toggle state of rectangular


% --- Executes on button press in impulse.
function impulse_Callback(hObject, eventdata, handles)
% hObject    handle to impulse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of impulse
pulse
hf=findobj('Name','mainmenu');
close(hf)


% --- Executes on button press in concat.
function concat_Callback(hObject, eventdata, handles)
% hObject    handle to concat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
concatinate
hf=findobj('Name','mainmenu');
close(hf)


% Hint: get(hObject,'Value') returns toggle state of concat
