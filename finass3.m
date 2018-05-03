function varargout = finass3(varargin)
% FINASS3 MATLAB code for finass3.fig
%      FINASS3, by itself, creates a new FINASS3 or raises the existing
%      singleton*.
%
%      H = FINASS3 returns the handle to a new FINASS3 or the handle to
%      the existing singleton*.
%
%      FINASS3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINASS3.M with the given input arguments.
%
%      FINASS3('Property','Value',...) creates a new FINASS3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finass3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finass3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finass3

% Last Modified by GUIDE v2.5 07-Apr-2018 15:18:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finass3_OpeningFcn, ...
                   'gui_OutputFcn',  @finass3_OutputFcn, ...
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


% --- Executes just before finass3 is made visible.
function finass3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finass3 (see VARARGIN)

% Choose default command line output for finass3
handles.output = hObject;
handles.i1 = 0;
handles.i2 = 0;
handles.i3 = 0;
handles.i4 = 0;
handles.i5 = 0;
handles.i6 = 0;
handles.i7 = 0;
handles.i8 = 0;
handles.i9 = 0;
handles.pushbutton1 = 0;
count = 0;
count1 = 0;
handles.count1 = count1;
handles.count = count;
fn =1 ;
handles.fn = fn;
validarr = zeros(1,4);
handles.validarr = validarr;
valarr = zeros(1,4);
handles.valarr = valarr;
opf = zeros(1,3);
handles.opf = opf;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finass3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finass3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in i1.
function i1_Callback(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
i1 = get(hObject, 'Value');
handles.i1 = i1;
guidata(hObject, handles);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i1


% --- Executes on button press in i2.
function i2_Callback(hObject, eventdata, handles)
i2 = get(hObject, 'Value');
handles.i2 = i2;
guidata(hObject, handles);
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i2


% --- Executes on button press in i3.
function i3_Callback(hObject, eventdata, handles)
i3 = get(hObject, 'Value');
handles.i3 = i3;
guidata(hObject, handles);
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i3


% --- Executes on button press in i4.
function i4_Callback(hObject, eventdata, handles)
i4 = get(hObject, 'Value');
handles.i4 = i4;
guidata(hObject, handles);
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i4


% --- Executes on button press in i5.
function i5_Callback(hObject, eventdata, handles)
i5 = get(hObject, 'Value');
handles.i5 = i5;
guidata(hObject, handles);
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i5


% --- Executes on button press in i6.
function i6_Callback(hObject, eventdata, handles)
i6 = get(hObject, 'Value');
handles.i6 = i6;
guidata(hObject, handles);
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i6


% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
i7 = get(hObject, 'Value');
handles.i7 = i7;
guidata(hObject, handles);
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton7


% --- Executes on button press in i8.
function i8_Callback(hObject, eventdata, handles)
i8 = get(hObject, 'Value');
handles.i8 = i8;
guidata(hObject, handles);
% hObject    handle to i8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i8


% --- Executes on button press in i9.
function i9_Callback(hObject, eventdata, handles)
i9 = get(hObject, 'Value');
handles.i9 = i9;
guidata(hObject, handles);
% hObject    handle to i9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of i9


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
count1 = handles.count1;
count = handles.count;
validarr = handles.validarr;
valarr = handles.valarr;
opf = handles.opf;
i1 = handles.i1;
i2 = handles.i2;
i3 = handles.i3;
i4 = handles.i4;
i5 = handles.i5;
i6 = handles.i6;
i7 = handles.i7;
i8 = handles.i8;
i9 = handles.i9;
fn = handles.fn;
ip = [i1,i2,i3,i4,i5,i6,i7,i8,i9];


x = [
    1,0,0,0,0,1,1,0,0,1;
    0,1,0,0,0,0,1,0,1,2;
    0,1,0,0,1,1,0,0,0,3;
    0,1,0,0,1,0,0,0,1,4;
    0,0,1,0,1,0,1,0,0,5;
    1,0,0,0,1,0,0,0,1,6;
    0,1,1,0,0,0,0,0,1,7;
    0,0,1,1,0,0,0,0,1,8;
                      ];
              




    flag = 0;

    card= ip;

    % Loop to check for validity of pattern

    for i=1:8
        a = strcmp(num2str(card(1,1:9)),num2str(x(i,1:9)));
        if(a==1)
            flag = 1;
            iter = i;
            flag;
            break;
        end
    end


    if(flag ==1)
        iter;
        count;
        valid = 1;
        value = x(iter,10);
        count=count+1;
        validarr(1,count) = valid;
        valarr(1,count) = value;
        handles.pushbutton1 = 1;
    else
        valid = -1;
        value = 10;
        count = count+1;
        validarr(1,count) = valid;
        valarr(1,count) = value;
        handles.pushbutton1 = 0;
    end

    if(mod(count,4)==0)
      % Comparator Neural Network Trained
      
      count = 0;
      w1 = [-11.6027   11.2749];
      b1 = 1.3469;
      opcomp = zeros(1,3);
      opcomp(1,1) = hardlim(w1*valarr(1,1:2)'+b1);
      w2 = [-11.6027   11.2749];
      b2 = 1.3469;
      opcomp(1,2) = hardlim(w2*valarr(1,2:3)'+b2);
      w3 = [-11.6027   11.2749];
      b3 = 1.3469;
      opcomp(1,3) = hardlim(w3*valarr(1,3:4)'+b3);

      % AND Neural Network in the 3D Space - Already Trained
      
      
      w11 = [0.9575,0.9649,0.1576];
      b11 = -2.0294;
      op2 = hardlim(w11*opcomp'+b11);
       valarr = zeros(1,4);
    count1 = count1 + 1;
    
    if(op2==1)
       % disp(' Boost the rockets');
        f = msgbox(' Success! We shall boost the rockets now');
        pause(1);
        if(mod(count1,3)==0)
            opf(1,3) = op2;
        else
            opf(1,mod(count1,3))=op2;
        end
        
    else
        %disp(' Failure - Try once more');
        f = msgbox('Failed - Try again');
         if(mod(count1,3)==0)
            opf(1,3) = op2;
        else
            opf(1,mod(count1,3))=op2;
         end
        end
    end
    if(count1>=3)
        wor = [0.6324    1.0975    1.2785];
        b = -0.4531;
        op = hardlim(wor*opf'+b);
        if(op==0)
            valarr;
            f = msgbox('Failed - System Locked Permanently');
            %disp('Rocket cant be controlled - System disabled');
        end
    end
    
    handles.count1 = count1;
    handles.count = count;
    handles.validarr = validarr;
    handles.valarr = valarr;
    handles.opf = opf;
    guidata(hObject, handles);



% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text3.
function text3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


