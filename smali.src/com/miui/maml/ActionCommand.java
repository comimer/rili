package com.miui.maml;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.miui.maml.animation.BaseAnimation.AnimationItem;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.SensorBinder;
import com.miui.maml.data.VariableBinder;
import com.miui.maml.data.VariableType;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.AnimConfigElement;
import com.miui.maml.elements.AnimStateElement;
import com.miui.maml.elements.AnimatedScreenElement;
import com.miui.maml.elements.ElementGroup;
import com.miui.maml.elements.FunctionElement;
import com.miui.maml.elements.GraphicsElement;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.elements.filament.PhysicallyBasedRenderingElement;
import com.miui.maml.elements.video.VideoElement;
import com.miui.maml.util.BaseMobileDataUtils;
import com.miui.maml.util.ColorParser;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.IntentInfo;
import com.miui.maml.util.MobileDataUtils;
import com.miui.maml.util.ReflectionHelper;
import com.miui.maml.util.Task;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import com.miui.maml.util.Variable;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class ActionCommand
{
  public static final String ACTION_USB_STATE = "android.hardware.usb.action.USB_STATE";
  private static final String COMMAND_BLUETOOTH = "Bluetooth";
  private static final String COMMAND_DATA = "Data";
  private static final String COMMAND_RING_MODE = "RingMode";
  private static final String COMMAND_USB_STORAGE = "UsbStorage";
  private static final String COMMAND_WIFI = "Wifi";
  private static final String LOG_TAG = "ActionCommand";
  private static final int STATE_DISABLED = 0;
  private static final int STATE_ENABLED = 1;
  private static final int STATE_INTERMEDIATE = 5;
  private static final int STATE_TURNING_OFF = 3;
  private static final int STATE_TURNING_ON = 2;
  private static final int STATE_UNKNOWN = 4;
  public static final String TAG_NAME = "Command";
  public static final String USB_CONNECTED = "connected";
  private static final Handler mHandler = new Handler(Looper.getMainLooper());
  protected ScreenElement mScreenElement;
  
  public ActionCommand(ScreenElement paramScreenElement)
  {
    this.mScreenElement = paramScreenElement;
  }
  
  protected static ActionCommand create(ScreenElement paramScreenElement, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      Variable localVariable = new Variable(paramString1);
      if (localVariable.getObjName() != null) {
        return PropertyCommand.create(paramScreenElement, paramString1, paramString2);
      }
      paramString1 = localVariable.getPropertyName();
      if ("RingMode".equals(paramString1)) {
        return new RingModeCommand(paramScreenElement, paramString2);
      }
      if ("Wifi".equals(paramString1)) {
        return new WifiSwitchCommand(paramScreenElement, paramString2);
      }
      if ("Bluetooth".equals(paramString1)) {
        return new BluetoothSwitchCommand(paramScreenElement, paramString2);
      }
      if ("Data".equals(paramString1)) {
        return new DataSwitchCommand(paramScreenElement, paramString2);
      }
      if ("UsbStorage".equals(paramString1)) {
        return new UsbStorageSwitchCommand(paramScreenElement, paramString2);
      }
    }
    return null;
  }
  
  public static ActionCommand create(Element paramElement, ScreenElement paramScreenElement)
  {
    if (paramElement == null) {
      return null;
    }
    Expression localExpression1 = Expression.build(paramScreenElement.getVariables(), paramElement.getAttribute("condition"));
    Expression localExpression2 = Expression.build(paramScreenElement.getVariables(), paramElement.getAttribute("delayCondition"));
    long l = Utils.getAttrAsLong(paramElement, "delay", 0L);
    Object localObject = paramElement.getNodeName();
    ((String)localObject).hashCode();
    int i = -1;
    switch (((String)localObject).hashCode())
    {
    default: 
      break;
    case 2009815015: 
      if (((String)localObject).equals("LoopCommand")) {
        i = 26;
      }
      break;
    case 1952987187: 
      if (((String)localObject).equals("FunctionCommand")) {
        i = 25;
      }
      break;
    case 1905320272: 
      if (((String)localObject).equals("FolmeCommand")) {
        i = 24;
      }
      break;
    case 1774042657: 
      if (((String)localObject).equals("BinderCommand")) {
        i = 23;
      }
      break;
    case 1624729163: 
      if (((String)localObject).equals("AnimStateCommand")) {
        i = 22;
      }
      break;
    case 1252238076: 
      if (((String)localObject).equals("VibrateCommand")) {
        i = 21;
      }
      break;
    case 1242365201: 
      if (((String)localObject).equals("FieldCommand")) {
        i = 20;
      }
      break;
    case 1192886094: 
      if (((String)localObject).equals("IfCommand")) {
        i = 19;
      }
      break;
    case 1099578084: 
      if (((String)localObject).equals("JsonObjectCommand")) {
        i = 18;
      }
      break;
    case 1017417233: 
      if (((String)localObject).equals("SensorCommand")) {
        i = 17;
      }
      break;
    case 967558768: 
      if (((String)localObject).equals("VideoCommand")) {
        i = 16;
      }
      break;
    case 911071503: 
      if (((String)localObject).equals("VariableCommand")) {
        i = 15;
      }
      break;
    case 812540743: 
      if (((String)localObject).equals("AnimationCommand")) {
        i = 14;
      }
      break;
    case 765286380: 
      if (((String)localObject).equals("GroupCommand")) {
        i = 13;
      }
      break;
    case 38409067: 
      if (((String)localObject).equals("ExternCommand")) {
        i = 12;
      }
      break;
    case -146126197: 
      if (((String)localObject).equals("PbrCommand")) {
        i = 11;
      }
      break;
    case -176797942: 
      if (((String)localObject).equals("MethodCommand")) {
        i = 10;
      }
      break;
    case -447874370: 
      if (((String)localObject).equals("FrameRateCommand")) {
        i = 9;
      }
      break;
    case -768846862: 
      if (((String)localObject).equals("MultiCommand")) {
        i = 8;
      }
      break;
    case -1031402045: 
      if (((String)localObject).equals("EaseTypeCommand")) {
        i = 7;
      }
      break;
    case -1157373931: 
      if (((String)localObject).equals("ActionCommand")) {
        i = 6;
      }
      break;
    case -1214351624: 
      if (((String)localObject).equals("AnimConfigCommand")) {
        i = 5;
      }
      break;
    case -1679919317: 
      if (((String)localObject).equals("Command")) {
        i = 4;
      }
      break;
    case -1698045830: 
      if (((String)localObject).equals("TickListenerCommand")) {
        i = 3;
      }
      break;
    case -1735490724: 
      if (((String)localObject).equals("SoundCommand")) {
        i = 2;
      }
      break;
    case -1919219473: 
      if (((String)localObject).equals("IntentCommand")) {
        i = 1;
      }
      break;
    case -1988058592: 
      if (((String)localObject).equals("GraphicsCommand")) {
        i = 0;
      }
      break;
    }
    switch (i)
    {
    default: 
      localObject = (ObjectFactory.ActionCommandFactory)paramScreenElement.getContext().getObjectFactory("ActionCommand");
      if (localObject != null) {
        paramElement = ((ObjectFactory.ActionCommandFactory)localObject).create(paramScreenElement, paramElement);
      } else {
        paramElement = null;
      }
      break;
    case 26: 
      paramElement = new LoopCommand(paramScreenElement, paramElement);
      break;
    case 25: 
      paramElement = new FunctionPerformCommand(paramScreenElement, paramElement);
      break;
    case 24: 
      paramElement = new FolmeCommand(paramScreenElement, paramElement);
      break;
    case 23: 
      paramElement = new VariableBinderCommand(paramScreenElement, paramElement);
      break;
    case 22: 
      paramElement = new AnimStateCommand(paramScreenElement, paramElement);
      break;
    case 21: 
      paramElement = new VibrateCommand(paramScreenElement, paramElement);
      break;
    case 20: 
      paramElement = new FieldCommand(paramScreenElement, paramElement);
      break;
    case 19: 
      paramElement = new IfCommand(paramScreenElement, paramElement);
      break;
    case 18: 
      paramElement = new JsonObjectCommand(paramScreenElement, paramElement);
      break;
    case 17: 
      paramElement = new SensorBinderCommand(paramScreenElement, paramElement);
      break;
    case 16: 
      paramElement = new VideoCommand(paramScreenElement, paramElement);
      break;
    case 15: 
      paramElement = new VariableAssignmentCommand(paramScreenElement, paramElement);
    }
    for (;;)
    {
      break;
      paramElement = new AnimationCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new ExternCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new PbrCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new MethodCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new FrameRateCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new MultiCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new EaseTypeCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new ActionPerformCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new AnimConfigCommand(paramScreenElement, paramElement);
      continue;
      paramElement = create(paramScreenElement, paramElement.getAttribute("target"), paramElement.getAttribute("value"));
      break;
      paramElement = new TickListenerCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new SoundCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new IntentCommand(paramScreenElement, paramElement);
      continue;
      paramElement = new GraphicsCommand(paramScreenElement, paramElement);
    }
    if (paramElement == null) {
      return null;
    }
    paramScreenElement = paramElement;
    if (localExpression2 != null) {
      paramScreenElement = new ConditionCommand(paramElement, localExpression2);
    }
    paramElement = paramScreenElement;
    if (l > 0L) {
      paramElement = new DelayCommand(paramScreenElement, l);
    }
    paramScreenElement = paramElement;
    if (localExpression1 != null) {
      paramScreenElement = new ConditionCommand(paramElement, localExpression1);
    }
    return paramScreenElement;
  }
  
  protected abstract void doPerform();
  
  public void finish() {}
  
  protected final Context getContext()
  {
    return getScreenContext().mContext;
  }
  
  protected ScreenElementRoot getRoot()
  {
    return this.mScreenElement.getRoot();
  }
  
  protected final ScreenContext getScreenContext()
  {
    return this.mScreenElement.getContext();
  }
  
  protected ScreenElement getScreenElement()
  {
    return this.mScreenElement;
  }
  
  protected final Variables getVariables()
  {
    return this.mScreenElement.getVariables();
  }
  
  public void init() {}
  
  protected boolean isExpressionsValid(Expression[] paramArrayOfExpression)
  {
    if (paramArrayOfExpression != null)
    {
      for (int i = 0; (i < paramArrayOfExpression.length) && (paramArrayOfExpression[i] != null); i++) {}
      if (i == paramArrayOfExpression.length) {
        return true;
      }
    }
    return false;
  }
  
  public void pause() {}
  
  public void perform()
  {
    doPerform();
  }
  
  public void resume() {}
  
  private static class ActionPerformCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "ActionCommand";
    private String mAction;
    private Expression mActionExp;
    
    public ActionPerformCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = paramElement.getAttribute("action");
      this.mAction = paramScreenElement;
      if (TextUtils.isEmpty(paramScreenElement))
      {
        this.mAction = null;
        this.mActionExp = Expression.build(getVariables(), paramElement.getAttribute("actionExp"));
      }
    }
    
    public void doPerform()
    {
      ScreenElement localScreenElement = (ScreenElement)getTarget();
      if (localScreenElement == null) {
        return;
      }
      Object localObject = this.mAction;
      if (localObject != null)
      {
        localScreenElement.performAction((String)localObject);
      }
      else
      {
        localObject = this.mActionExp;
        if (localObject != null)
        {
          localObject = ((Expression)localObject).evaluateStr();
          if (localObject != null) {
            localScreenElement.performAction((String)localObject);
          }
        }
      }
    }
  }
  
  private static class AnimConfigCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "AnimConfigCommand";
    private Expression mAttr;
    private Type mCommand;
    private Expression mSubName;
    private Expression[] mValuesExp;
    
    public AnimConfigCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mSubName = Expression.build(getVariables(), paramElement.getAttribute("subNameExp"));
      this.mAttr = Expression.build(getVariables(), paramElement.getAttribute("attrExp"));
      this.mValuesExp = Expression.buildMultiple(getVariables(), paramElement.getAttribute("valuesExp"));
      paramScreenElement = paramElement.getAttribute("command");
      paramScreenElement.hashCode();
      int i = paramScreenElement.hashCode();
      int j = -1;
      switch (i)
      {
      default: 
        break;
      case 94746189: 
        if (paramScreenElement.equals("clear")) {
          j = 2;
        }
        break;
      case -838846263: 
        if (paramScreenElement.equals("update")) {
          j = 1;
        }
        break;
      case -934610812: 
        if (paramScreenElement.equals("remove")) {
          j = 0;
        }
        break;
      }
      switch (j)
      {
      default: 
        this.mCommand = Type.INVALID;
        break;
      case 2: 
        this.mCommand = Type.CLEAR;
        break;
      case 1: 
        this.mCommand = Type.UPDATE;
        break;
      case 0: 
        this.mCommand = Type.REMOVE;
      }
    }
    
    protected void doPerform()
    {
      Object localObject1 = getTarget();
      if ((localObject1 != null) && ((localObject1 instanceof AnimConfigElement)))
      {
        AnimConfigElement localAnimConfigElement = (AnimConfigElement)localObject1;
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(this.mTargetName);
        localObject1 = this.mSubName;
        Object localObject3 = "";
        if (localObject1 != null)
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append(".");
          ((StringBuilder)localObject1).append(this.mSubName.evaluateStr());
          localObject1 = ((StringBuilder)localObject1).toString();
        }
        else
        {
          localObject1 = "";
        }
        ((StringBuilder)localObject2).append((String)localObject1);
        localObject2 = ((StringBuilder)localObject2).toString();
        Expression localExpression = this.mAttr;
        localObject1 = localObject3;
        if (localExpression != null) {
          localObject1 = localExpression.evaluateStr();
        }
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$AnimConfigCommand$Type[this.mCommand.ordinal()];
        if (i != 1)
        {
          if (i != 2)
          {
            if (i == 3) {
              localAnimConfigElement.clearConfigData();
            }
          }
          else {
            localAnimConfigElement.removeConfigData((String)localObject2, (String)localObject1);
          }
        }
        else
        {
          localObject3 = this.mValuesExp;
          if (localObject3 != null) {
            localAnimConfigElement.updateConfigData((String)localObject2, (String)localObject1, (Expression[])localObject3);
          }
        }
      }
    }
    
    static enum Type
    {
      static
      {
        Type localType1 = new Type("UPDATE", 0);
        UPDATE = localType1;
        Type localType2 = new Type("REMOVE", 1);
        REMOVE = localType2;
        Type localType3 = new Type("CLEAR", 2);
        CLEAR = localType3;
        Type localType4 = new Type("INVALID", 3);
        INVALID = localType4;
        $VALUES = new Type[] { localType1, localType2, localType3, localType4 };
      }
      
      private Type() {}
    }
  }
  
  private static class AnimStateCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "AnimStateCommand";
    private Expression mAttrArrayName;
    private String[] mAttrs;
    private Expression[] mAttrsExp;
    private Type mCommand;
    private boolean mIsAttrsValid;
    private boolean mIsValuesValid;
    private Expression mValueArrayName;
    private double[] mValues;
    private Expression[] mValuesExp;
    
    public AnimStateCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = getVariables();
      this.mValueArrayName = Expression.build(paramScreenElement, paramElement.getAttribute("valueArrayNameExp"));
      this.mAttrArrayName = Expression.build(paramScreenElement, paramElement.getAttribute("attrArrayNameExp"));
      this.mValuesExp = Expression.buildMultiple(paramScreenElement, paramElement.getAttribute("valuesExp"));
      this.mAttrsExp = Expression.buildMultiple(paramScreenElement, paramElement.getAttribute("attrsExp"));
      this.mIsValuesValid = isExpressionsValid(this.mValuesExp);
      boolean bool = isExpressionsValid(this.mAttrsExp);
      this.mIsAttrsValid = bool;
      if (bool) {
        this.mAttrs = new String[this.mAttrsExp.length];
      }
      if (this.mIsValuesValid) {
        this.mValues = new double[this.mValuesExp.length];
      }
      paramScreenElement = paramElement.getAttribute("command");
      paramScreenElement.hashCode();
      int i = -1;
      switch (paramScreenElement.hashCode())
      {
      default: 
        break;
      case 94746189: 
        if (paramScreenElement.equals("clear")) {
          i = 2;
        }
        break;
      case -838846263: 
        if (paramScreenElement.equals("update")) {
          i = 1;
        }
        break;
      case -934610812: 
        if (paramScreenElement.equals("remove")) {
          i = 0;
        }
        break;
      }
      switch (i)
      {
      default: 
        this.mCommand = Type.INVALID;
        break;
      case 2: 
        this.mCommand = Type.CLEAR;
        break;
      case 1: 
        this.mCommand = Type.UPDATE;
        break;
      case 0: 
        this.mCommand = Type.REMOVE;
      }
    }
    
    private void remove(AnimStateElement paramAnimStateElement)
    {
      Object localObject = this.mAttrs;
      if (localObject != null)
      {
        int i = localObject.length;
        for (int j = 0; j < i; j++) {
          this.mAttrs[j] = this.mAttrsExp[j].evaluateStr();
        }
        paramAnimStateElement.removeAttr(this.mAttrs);
      }
      else if (this.mAttrArrayName != null)
      {
        localObject = getVariables().get(this.mAttrArrayName.evaluateStr());
        if ((localObject != null) && ((localObject instanceof String[]))) {
          paramAnimStateElement.removeAttr((String[])localObject);
        }
      }
    }
    
    private void update(AnimStateElement paramAnimStateElement)
    {
      Object localObject1 = this.mAttrs;
      Object localObject2;
      if (localObject1 != null)
      {
        localObject2 = this.mValues;
        if ((localObject2 != null) && (localObject1.length == localObject2.length))
        {
          int i = localObject1.length;
          for (int j = 0; j < i; j++)
          {
            this.mAttrs[j] = this.mAttrsExp[j].evaluateStr();
            this.mValues[j] = this.mValuesExp[j].evaluate();
          }
          paramAnimStateElement.updateAttr(this.mAttrs, this.mValues);
          return;
        }
      }
      if ((this.mAttrArrayName != null) && (this.mValueArrayName != null))
      {
        localObject1 = getVariables().get(this.mAttrArrayName.evaluateStr());
        localObject2 = getVariables().get(this.mValueArrayName.evaluateStr());
        if ((localObject1 != null) && ((localObject1 instanceof String[])) && (localObject2 != null) && ((localObject2 instanceof double[]))) {
          paramAnimStateElement.updateAttr((String[])localObject1, (double[])localObject2);
        }
      }
    }
    
    protected void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof AnimStateElement)))
      {
        localObject = (AnimStateElement)localObject;
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$AnimStateCommand$Type[this.mCommand.ordinal()];
        if (i != 1)
        {
          if (i != 2)
          {
            if (i == 3) {
              ((AnimStateElement)localObject).clear();
            }
          }
          else {
            remove((AnimStateElement)localObject);
          }
        }
        else {
          update((AnimStateElement)localObject);
        }
      }
    }
    
    static enum Type
    {
      static
      {
        Type localType1 = new Type("UPDATE", 0);
        UPDATE = localType1;
        Type localType2 = new Type("REMOVE", 1);
        REMOVE = localType2;
        Type localType3 = new Type("CLEAR", 2);
        CLEAR = localType3;
        Type localType4 = new Type("INVALID", 3);
        INVALID = localType4;
        $VALUES = new Type[] { localType1, localType2, localType3, localType4 };
      }
      
      private Type() {}
    }
  }
  
  private static class AnimationCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "AnimationCommand";
    private boolean mAllAni;
    private String[] mAniTags;
    private CommandType mCommand;
    private Expression[] mPlayParams;
    
    public AnimationCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = paramElement.getAttribute("command");
      if (paramScreenElement.equalsIgnoreCase("play"))
      {
        this.mCommand = CommandType.PLAY;
      }
      else if (paramScreenElement.equalsIgnoreCase("pause"))
      {
        this.mCommand = CommandType.PAUSE;
      }
      else if (paramScreenElement.equalsIgnoreCase("resume"))
      {
        this.mCommand = CommandType.RESUME;
      }
      else if ((paramScreenElement.toLowerCase().startsWith("play(")) && (paramScreenElement.endsWith(")")))
      {
        this.mCommand = CommandType.PLAY_WITH_PARAMS;
        paramScreenElement = Expression.buildMultiple(getVariables(), paramScreenElement.substring(5, paramScreenElement.length() - 1));
        this.mPlayParams = paramScreenElement;
        if ((paramScreenElement != null) && (paramScreenElement.length != 2) && (paramScreenElement.length != 4)) {
          Log.e("ActionCommand", "bad expression format");
        }
      }
      else
      {
        this.mCommand = CommandType.INVALID;
      }
      paramScreenElement = paramElement.getAttribute("tags");
      if (".".equals(paramScreenElement)) {
        this.mAllAni = true;
      } else if (!TextUtils.isEmpty(paramScreenElement)) {
        this.mAniTags = paramScreenElement.split(",");
      }
    }
    
    public void doPerform()
    {
      ScreenElement localScreenElement = (ScreenElement)getTarget();
      if (localScreenElement == null) {
        return;
      }
      Object localObject = this.mCommand;
      if (((localObject == CommandType.PLAY) || (localObject == CommandType.PLAY_WITH_PARAMS)) && ((this.mAllAni) || (this.mAniTags != null))) {
        localScreenElement.setAnim(this.mAniTags);
      }
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$AnimationCommand$CommandType[this.mCommand.ordinal()];
      boolean bool1 = true;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i == 4)
            {
              long l1 = 0L;
              long l2 = -1L;
              localObject = this.mPlayParams;
              i = localObject.length;
              boolean bool2 = false;
              double d;
              if (i > 0)
              {
                localObject = localObject[0];
                if (localObject == null) {
                  d = 0.0D;
                } else {
                  d = ((Expression)localObject).evaluate();
                }
                l1 = d;
              }
              localObject = this.mPlayParams;
              if (localObject.length > 1)
              {
                localObject = localObject[1];
                if (localObject == null) {
                  d = -1.0D;
                } else {
                  d = ((Expression)localObject).evaluate();
                }
                l2 = d;
              }
              localObject = this.mPlayParams;
              if (localObject.length > 2)
              {
                localObject = localObject[2];
                if ((localObject != null) && (((Expression)localObject).evaluate() > 0.0D))
                {
                  bool3 = true;
                  break label218;
                }
              }
              boolean bool3 = false;
              label218:
              localObject = this.mPlayParams;
              if (localObject.length > 3)
              {
                localObject = localObject[3];
                if (localObject == null) {}
                while (((Expression)localObject).evaluate() <= 0.0D)
                {
                  bool2 = false;
                  break;
                }
                bool2 = bool1;
              }
              localScreenElement.playAnim(l1, l2, bool3, bool2);
            }
          }
          else {
            localScreenElement.resumeAnim();
          }
        }
        else {
          localScreenElement.pauseAnim();
        }
      }
      else {
        localScreenElement.playAnim();
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("PLAY", 1);
        PLAY = localCommandType2;
        CommandType localCommandType3 = new CommandType("PAUSE", 2);
        PAUSE = localCommandType3;
        CommandType localCommandType4 = new CommandType("RESUME", 3);
        RESUME = localCommandType4;
        CommandType localCommandType5 = new CommandType("PLAY_WITH_PARAMS", 4);
        PLAY_WITH_PARAMS = localCommandType5;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3, localCommandType4, localCommandType5 };
      }
      
      private CommandType() {}
    }
  }
  
  @Deprecated
  private static class AnimationProperty
    extends ActionCommand.PropertyCommand
  {
    public static final String PROPERTY_NAME = "animation";
    private Expression[] mPlayParams;
    private Type mType;
    
    protected AnimationProperty(ScreenElement paramScreenElement, Variable paramVariable, String paramString)
    {
      super(paramVariable, paramString);
      if (paramString.equalsIgnoreCase("play"))
      {
        this.mType = Type.PLAY;
      }
      else if (paramString.equalsIgnoreCase("pause"))
      {
        this.mType = Type.PAUSE;
      }
      else if (paramString.equalsIgnoreCase("resume"))
      {
        this.mType = Type.RESUME;
      }
      else if ((paramString.toLowerCase().startsWith("play(")) && (paramString.endsWith(")")))
      {
        this.mType = Type.PLAY_WITH_PARAMS;
        paramScreenElement = Expression.buildMultiple(getVariables(), paramString.substring(5, paramString.length() - 1));
        this.mPlayParams = paramScreenElement;
        if ((paramScreenElement != null) && (paramScreenElement.length != 2) && (paramScreenElement.length != 4)) {
          Log.e("ActionCommand", "bad expression format");
        }
      }
      else
      {
        this.mType = Type.INVALID;
      }
    }
    
    public void doPerform()
    {
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$AnimationProperty$Type[this.mType.ordinal()];
      boolean bool1 = true;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i == 4)
            {
              long l1 = 0L;
              long l2 = -1L;
              Object localObject = this.mPlayParams;
              double d;
              if (localObject.length > 0)
              {
                localObject = localObject[0];
                if (localObject == null) {
                  d = 0.0D;
                } else {
                  d = ((Expression)localObject).evaluate();
                }
                l1 = d;
              }
              localObject = this.mPlayParams;
              if (localObject.length > 1)
              {
                localObject = localObject[1];
                if (localObject == null) {
                  d = -1.0D;
                } else {
                  d = ((Expression)localObject).evaluate();
                }
                l2 = d;
              }
              localObject = this.mPlayParams;
              boolean bool2;
              boolean bool3;
              if (localObject.length > 2)
              {
                localObject = localObject[2];
                if (localObject == null) {}
                while (((Expression)localObject).evaluate() <= 0.0D)
                {
                  bool2 = false;
                  break;
                }
                bool2 = true;
                bool3 = bool2;
              }
              else
              {
                bool3 = false;
              }
              localObject = this.mPlayParams;
              if (localObject.length > 3)
              {
                localObject = localObject[3];
                if (localObject == null) {}
                while (((Expression)localObject).evaluate() <= 0.0D)
                {
                  bool2 = false;
                  break;
                }
                bool2 = bool1;
              }
              else
              {
                bool2 = false;
              }
              this.mTargetElement.playAnim(l1, l2, bool3, bool2);
            }
          }
          else {
            this.mTargetElement.resumeAnim();
          }
        }
        else {
          this.mTargetElement.pauseAnim();
        }
      }
      else {
        this.mTargetElement.playAnim();
      }
    }
    
    static enum Type
    {
      static
      {
        Type localType1 = new Type("INVALID", 0);
        INVALID = localType1;
        Type localType2 = new Type("PLAY", 1);
        PLAY = localType2;
        Type localType3 = new Type("PAUSE", 2);
        PAUSE = localType3;
        Type localType4 = new Type("RESUME", 3);
        RESUME = localType4;
        Type localType5 = new Type("PLAY_WITH_PARAMS", 4);
        PLAY_WITH_PARAMS = localType5;
        $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5 };
      }
      
      private Type() {}
    }
  }
  
  private static abstract class BaseMethodCommand
    extends ActionCommand.TargetCommand
  {
    protected static final int ERROR_EXCEPTION = -2;
    protected static final int ERROR_NO_METHOD = -1;
    protected static final int ERROR_SUCCESS = 1;
    protected IndexedVariable mErrorCodeVar;
    private ActionCommand.ObjVar[] mParamObjVars;
    protected Class<?>[] mParamTypes;
    protected Object[] mParamValues;
    private Expression[] mParams;
    protected IndexedVariable mReturnVar;
    protected Class<?> mTargetClass;
    protected String mTargetClassName;
    
    public BaseMethodCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = paramElement.getAttribute("class");
      this.mTargetClassName = paramScreenElement;
      if (TextUtils.isEmpty(paramScreenElement)) {
        this.mTargetClassName = null;
      }
      paramScreenElement = paramElement.getAttribute("params");
      this.mParams = Expression.buildMultiple(getVariables(), paramScreenElement);
      paramScreenElement = paramElement.getAttribute("paramTypes");
      if ((this.mParams != null) && (!TextUtils.isEmpty(paramScreenElement)))
      {
        paramScreenElement = TextUtils.split(paramScreenElement, ",");
        try
        {
          paramScreenElement = ReflectionHelper.strTypesToClass(paramScreenElement);
          this.mParamTypes = paramScreenElement;
          if (this.mParams.length != paramScreenElement.length)
          {
            paramScreenElement = new java/lang/StringBuilder;
            paramScreenElement.<init>();
            paramScreenElement.append(this.mLogStr);
            paramScreenElement.append("different length of params and paramTypes");
            Log.e("ActionCommand", paramScreenElement.toString());
            this.mParams = null;
            this.mParamTypes = null;
          }
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          paramScreenElement = new StringBuilder();
          paramScreenElement.append(this.mLogStr);
          paramScreenElement.append("invalid method paramTypes. ");
          paramScreenElement.append(localClassNotFoundException.toString());
          Log.e("ActionCommand", paramScreenElement.toString());
          this.mParams = null;
          this.mParamTypes = null;
        }
      }
      paramScreenElement = paramElement.getAttribute("return");
      if (!TextUtils.isEmpty(paramScreenElement))
      {
        VariableType localVariableType = VariableType.parseType(paramElement.getAttribute("returnType"));
        this.mReturnVar = new IndexedVariable(paramScreenElement, getVariables(), localVariableType.isNumber());
      }
      paramScreenElement = paramElement.getAttribute("errorVar");
      if (!TextUtils.isEmpty(paramScreenElement)) {
        this.mErrorCodeVar = new IndexedVariable(paramScreenElement, getVariables(), true);
      }
      paramScreenElement = new StringBuilder();
      paramScreenElement.append(this.mLogStr);
      paramScreenElement.append(", class=");
      paramScreenElement.append(this.mTargetClassName);
      paramScreenElement.append(" type=");
      paramScreenElement.append(this.mTargetType.toString());
      this.mLogStr = paramScreenElement.toString();
    }
    
    public void finish()
    {
      super.finish();
      this.mParamValues = null;
    }
    
    public void init()
    {
      super.init();
      Object localObject = this.mParamTypes;
      if (localObject != null)
      {
        if (this.mParamObjVars == null) {
          this.mParamObjVars = new ActionCommand.ObjVar[localObject.length];
        }
        for (int i = 0;; i++)
        {
          localObject = this.mParamTypes;
          if (i >= localObject.length) {
            break;
          }
          this.mParamObjVars[i] = null;
          localObject = localObject[i];
          if (((!((Class)localObject).isPrimitive()) || (((Class)localObject).isArray())) && (localObject != String.class))
          {
            localObject = this.mParams[i];
            if (localObject != null)
            {
              localObject = ((Expression)localObject).evaluateStr();
              if (!TextUtils.isEmpty((CharSequence)localObject)) {
                this.mParamObjVars[i] = new ActionCommand.ObjVar((String)localObject, getVariables());
              }
            }
          }
        }
      }
      localObject = this.mTargetClassName;
      if (localObject != null) {
        try
        {
          this.mTargetClass = Class.forName((String)localObject);
        }
        catch (Exception localException)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("target class not found, name: ");
          ((StringBuilder)localObject).append(this.mTargetClassName);
          ((StringBuilder)localObject).append("\n");
          ((StringBuilder)localObject).append(localException.toString());
          Log.w("ActionCommand", ((StringBuilder)localObject).toString());
        }
      }
    }
    
    protected void prepareParams()
    {
      Object localObject1 = this.mParams;
      if (localObject1 != null)
      {
        if (this.mParamValues == null) {
          this.mParamValues = new Object[localObject1.length];
        }
        for (int i = 0;; i++)
        {
          Object localObject2 = this.mParams;
          if (i >= localObject2.length) {
            break;
          }
          Object[] arrayOfObject = this.mParamValues;
          localObject1 = null;
          arrayOfObject[i] = null;
          Object localObject3 = this.mParamTypes[i];
          localObject2 = localObject2[i];
          if (localObject2 != null) {
            if (localObject3 == String.class)
            {
              arrayOfObject[i] = ((Expression)localObject2).evaluateStr();
            }
            else if (localObject3 == Integer.TYPE)
            {
              arrayOfObject[i] = Integer.valueOf((int)((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Long.TYPE)
            {
              arrayOfObject[i] = Long.valueOf(((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Boolean.TYPE)
            {
              boolean bool;
              if (((Expression)localObject2).evaluate() > 0.0D) {
                bool = true;
              } else {
                bool = false;
              }
              arrayOfObject[i] = Boolean.valueOf(bool);
            }
            else if (localObject3 == Double.TYPE)
            {
              arrayOfObject[i] = Double.valueOf(((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Float.TYPE)
            {
              arrayOfObject[i] = Float.valueOf((float)((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Byte.TYPE)
            {
              arrayOfObject[i] = Byte.valueOf((byte)(int)((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Short.TYPE)
            {
              arrayOfObject[i] = Short.valueOf((short)(int)((Expression)localObject2).evaluate());
            }
            else if (localObject3 == Character.TYPE)
            {
              arrayOfObject[i] = Character.valueOf((char)(int)((Expression)localObject2).evaluate());
            }
            else
            {
              localObject3 = this.mParamObjVars[i];
              if (localObject3 != null) {
                localObject1 = ((ActionCommand.ObjVar)localObject3).get();
              }
              arrayOfObject[i] = localObject1;
            }
          }
        }
      }
    }
  }
  
  @SuppressLint({"MissingPermission"})
  private static class BluetoothSwitchCommand
    extends ActionCommand.NotificationReceiver
  {
    private BluetoothAdapter mBluetoothAdapter;
    private boolean mBluetoothEnable;
    private boolean mBluetoothEnabling;
    private ActionCommand.OnOffCommandHelper mOnOffHelper;
    
    public BluetoothSwitchCommand(ScreenElement paramScreenElement, String paramString)
    {
      super("bluetooth_state", "android.bluetooth.adapter.action.STATE_CHANGED");
      this.mOnOffHelper = new ActionCommand.OnOffCommandHelper(paramString);
    }
    
    private boolean ensureBluetoothAdapter()
    {
      if (this.mBluetoothAdapter == null) {
        this.mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      }
      boolean bool;
      if (this.mBluetoothAdapter != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    protected void doPerform()
    {
      if (!ensureBluetoothAdapter()) {
        return;
      }
      ActionCommand.OnOffCommandHelper localOnOffCommandHelper = this.mOnOffHelper;
      if (localOnOffCommandHelper.mIsToggle)
      {
        if (this.mBluetoothEnable)
        {
          this.mBluetoothAdapter.disable();
          this.mBluetoothEnabling = false;
        }
        else
        {
          this.mBluetoothAdapter.enable();
          this.mBluetoothEnabling = true;
        }
      }
      else if (!this.mBluetoothEnabling)
      {
        boolean bool1 = this.mBluetoothEnable;
        boolean bool2 = localOnOffCommandHelper.mIsOn;
        if (bool1 != bool2) {
          if (bool2)
          {
            this.mBluetoothAdapter.enable();
            this.mBluetoothEnabling = true;
          }
          else
          {
            this.mBluetoothAdapter.disable();
            this.mBluetoothEnabling = false;
          }
        }
      }
      update();
    }
    
    protected void update()
    {
      if (!ensureBluetoothAdapter()) {
        return;
      }
      boolean bool = this.mBluetoothAdapter.isEnabled();
      this.mBluetoothEnable = bool;
      int i = 0;
      if (bool)
      {
        this.mBluetoothEnabling = false;
        updateState(1);
      }
      else
      {
        if (this.mBluetoothEnabling) {
          i = 2;
        }
        updateState(i);
      }
    }
  }
  
  private static class ConditionCommand
    extends ActionCommand
  {
    private ActionCommand mCommand;
    private Expression mCondition;
    
    public ConditionCommand(ActionCommand paramActionCommand, Expression paramExpression)
    {
      super();
      this.mCommand = paramActionCommand;
      this.mCondition = paramExpression;
    }
    
    protected void doPerform()
    {
      if (this.mCondition.evaluate() > 0.0D) {
        this.mCommand.perform();
      }
    }
    
    public void init()
    {
      this.mCommand.init();
    }
  }
  
  private static class DataSwitchCommand
    extends ActionCommand.NotificationReceiver
  {
    private boolean mApnEnable;
    private MobileDataUtils mMobileDataUtils;
    private ActionCommand.OnOffCommandHelper mOnOffHelper;
    
    public DataSwitchCommand(ScreenElement paramScreenElement, String paramString)
    {
      super("data_state", NotifierManager.TYPE_MOBILE_DATA);
      this.mOnOffHelper = new ActionCommand.OnOffCommandHelper(paramString);
      this.mMobileDataUtils = MobileDataUtils.getInstance();
    }
    
    protected void doPerform()
    {
      boolean bool1 = this.mApnEnable;
      ActionCommand.OnOffCommandHelper localOnOffCommandHelper = this.mOnOffHelper;
      boolean bool2;
      if (localOnOffCommandHelper.mIsToggle) {
        bool2 = bool1 ^ true;
      } else {
        bool2 = localOnOffCommandHelper.mIsOn;
      }
      if (bool1 != bool2) {
        this.mMobileDataUtils.enableMobileData(this.mScreenElement.getContext().mContext, bool2);
      }
    }
    
    protected void update()
    {
      int i = this.mMobileDataUtils.isMobileEnable(this.mScreenElement.getContext().mContext);
      this.mApnEnable = i;
      updateState(i);
    }
  }
  
  private static class DelayCommand
    extends ActionCommand
  {
    private Runnable mCmd;
    private ActionCommand mCommand;
    private long mDelay;
    
    public DelayCommand(ActionCommand paramActionCommand, long paramLong)
    {
      super();
      this.mCommand = paramActionCommand;
      this.mDelay = paramLong;
      this.mCmd = new Runnable()
      {
        public void run()
        {
          ActionCommand.this.perform();
        }
      };
    }
    
    protected void doPerform()
    {
      getRoot().postDelayed(this.mCmd, this.mDelay);
    }
    
    public void finish()
    {
      getRoot().removeCallbacks(this.mCmd);
    }
    
    public void init()
    {
      this.mCommand.init();
    }
  }
  
  private static class EaseTypeCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "EaseTypeCommand";
    private String mEaseFun;
    private String mEaseParams;
    private Expression mEaseTypeExp;
    
    public EaseTypeCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mTargetType = ActionCommand.TargetCommand.TargetType.ANIMATION_ITEM;
      this.mEaseTypeExp = Expression.build(getVariables(), paramElement.getAttribute("easeTypeExp"));
      this.mEaseFun = paramElement.getAttribute("easeFunExp");
      this.mEaseParams = paramElement.getAttribute("easeParamsExp");
    }
    
    public void doPerform()
    {
      Object localObject = (ArrayList)getTarget();
      if (localObject == null) {
        return;
      }
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((BaseAnimation.AnimationItem)((Iterator)localObject).next()).changeInterpolator(this.mEaseTypeExp.evaluateStr(), this.mEaseParams, this.mEaseFun);
      }
    }
  }
  
  private static class ExternCommand
    extends ActionCommand
  {
    public static final String TAG_NAME = "ExternCommand";
    private String mCommand;
    private Expression mNumParaExp;
    private Expression mStrParaExp;
    
    public ExternCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      this.mCommand = paramElement.getAttribute("command");
      this.mNumParaExp = Expression.build(getVariables(), paramElement.getAttribute("numPara"));
      this.mStrParaExp = Expression.build(getVariables(), paramElement.getAttribute("strPara"));
    }
    
    protected void doPerform()
    {
      ScreenElementRoot localScreenElementRoot = getRoot();
      String str1 = this.mCommand;
      Object localObject = this.mNumParaExp;
      String str2 = null;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = Double.valueOf(((Expression)localObject).evaluate());
      }
      Expression localExpression = this.mStrParaExp;
      if (localExpression != null) {
        str2 = localExpression.evaluateStr();
      }
      localScreenElementRoot.issueExternCommand(str1, (Double)localObject, str2);
    }
  }
  
  private static class FieldCommand
    extends ActionCommand.BaseMethodCommand
  {
    public static final String TAG_NAME = "FieldCommand";
    private Field mField;
    private String mFieldName;
    private boolean mIsSet;
    
    public FieldCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mFieldName = paramElement.getAttribute("field");
      paramScreenElement = new StringBuilder();
      paramScreenElement.append("FieldCommand, ");
      paramScreenElement.append(this.mLogStr);
      paramScreenElement.append(", field=");
      paramScreenElement.append(this.mFieldName);
      paramScreenElement.append("\n");
      this.mLogStr = paramScreenElement.toString();
      paramScreenElement = paramElement.getAttribute("method");
      if ("get".equals(paramScreenElement)) {
        this.mIsSet = false;
      } else if ("set".equals(paramScreenElement)) {
        this.mIsSet = true;
      }
    }
    
    protected void doPerform()
    {
      if (this.mField == null) {
        loadField();
      }
      if (this.mField != null) {
        try
        {
          int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType[this.mTargetType.ordinal()];
          if ((i == 1) || (i == 2)) {
            if (this.mIsSet)
            {
              prepareParams();
              localObject = this.mParamValues;
              if ((localObject != null) && (localObject.length == 1)) {
                this.mField.set(getTarget(), this.mParamValues[0]);
              }
            }
            else if (this.mReturnVar != null)
            {
              localObject = this.mField.get(getTarget());
              this.mReturnVar.set(localObject);
            }
          }
        }
        catch (NullPointerException localNullPointerException)
        {
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append(this.mLogStr);
          ((StringBuilder)localObject).append("Field target is null. ");
          ((StringBuilder)localObject).append(localNullPointerException.toString());
          Log.e("ActionCommand", ((StringBuilder)localObject).toString());
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          Log.e("ActionCommand", localIllegalAccessException.toString());
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Log.e("ActionCommand", localIllegalArgumentException.toString());
        }
      }
    }
    
    public void init()
    {
      super.init();
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType[this.mTargetType.ordinal()];
      if (((i == 1) || (i == 2)) && (this.mField != null)) {
        loadField();
      }
    }
    
    protected void loadField()
    {
      if (this.mTargetClass == null)
      {
        localObject = getTarget();
        if (localObject != null) {
          this.mTargetClass = localObject.getClass();
        }
      }
      Object localObject = this.mTargetClass;
      if (localObject != null)
      {
        try
        {
          this.mField = ((Class)localObject).getField(this.mFieldName);
        }
        catch (NoSuchFieldException localNoSuchFieldException)
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(this.mLogStr);
          localStringBuilder2.append(localNoSuchFieldException.toString());
          Log.e("ActionCommand", localStringBuilder2.toString());
        }
      }
      else
      {
        StringBuilder localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append(this.mLogStr);
        localStringBuilder1.append("class is null.");
        Log.e("ActionCommand", localStringBuilder1.toString());
      }
    }
  }
  
  private static class FolmeCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "FolmeCommand";
    private Type mCommand;
    private Expression mConfig;
    private boolean mIsParamsValid;
    private boolean mIsStatesValid;
    private Expression[] mParams;
    private Expression[] mStates;
    
    public FolmeCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mParams = Expression.buildMultiple(getVariables(), paramElement.getAttribute("params"));
      this.mStates = Expression.buildMultiple(getVariables(), paramElement.getAttribute("states"));
      this.mConfig = Expression.build(getVariables(), paramElement.getAttribute("config"));
      this.mIsParamsValid = isExpressionsValid(this.mParams);
      this.mIsStatesValid = isExpressionsValid(this.mStates);
      paramScreenElement = paramElement.getAttribute("command");
      paramScreenElement.hashCode();
      int i = paramScreenElement.hashCode();
      int j = -1;
      switch (i)
      {
      default: 
        break;
      case 109327997: 
        if (paramScreenElement.equals("setTo")) {
          j = 3;
        }
        break;
      case 3707: 
        if (paramScreenElement.equals("to")) {
          j = 2;
        }
        break;
      case -1266098235: 
        if (paramScreenElement.equals("fromTo")) {
          j = 1;
        }
        break;
      case -1367724422: 
        if (paramScreenElement.equals("cancel")) {
          j = 0;
        }
        break;
      }
      switch (j)
      {
      default: 
        this.mCommand = Type.INVALID;
        break;
      case 3: 
        this.mCommand = Type.SET_TO;
        break;
      case 2: 
        this.mCommand = Type.TO;
        break;
      case 1: 
        this.mCommand = Type.FROM_TO;
        break;
      case 0: 
        this.mCommand = Type.CANCEL;
      }
    }
    
    private void folmeCancel(AnimatedScreenElement paramAnimatedScreenElement)
    {
      if (this.mIsParamsValid) {
        paramAnimatedScreenElement.folmeCancel(this.mParams);
      } else {
        paramAnimatedScreenElement.folmeCancel(null);
      }
    }
    
    private void folmeFromTo(AnimatedScreenElement paramAnimatedScreenElement)
    {
      if (this.mIsStatesValid)
      {
        Object localObject = this.mStates;
        if (localObject.length > 1)
        {
          String str1 = localObject[0].evaluateStr();
          String str2 = this.mStates[1].evaluateStr();
          localObject = this.mConfig;
          if (localObject != null) {
            localObject = ((Expression)localObject).evaluateStr();
          } else {
            localObject = null;
          }
          paramAnimatedScreenElement.folmeFromTo(str1, str2, (String)localObject);
        }
      }
    }
    
    private void folmeSetTo(AnimatedScreenElement paramAnimatedScreenElement)
    {
      if (this.mIsStatesValid)
      {
        Expression[] arrayOfExpression = this.mStates;
        if (arrayOfExpression.length > 0) {
          paramAnimatedScreenElement.folmeSetTo(arrayOfExpression[0].evaluateStr());
        }
      }
    }
    
    private void folmeTo(AnimatedScreenElement paramAnimatedScreenElement)
    {
      if (this.mIsStatesValid)
      {
        Object localObject = this.mStates;
        if (localObject.length > 0)
        {
          String str = localObject[0].evaluateStr();
          localObject = this.mConfig;
          if (localObject != null) {
            localObject = ((Expression)localObject).evaluateStr();
          } else {
            localObject = null;
          }
          paramAnimatedScreenElement.folmeTo(str, (String)localObject);
        }
      }
    }
    
    protected void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof AnimatedScreenElement)))
      {
        localObject = (AnimatedScreenElement)localObject;
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$FolmeCommand$Type[this.mCommand.ordinal()];
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              if (i == 4) {
                folmeCancel((AnimatedScreenElement)localObject);
              }
            }
            else {
              folmeFromTo((AnimatedScreenElement)localObject);
            }
          }
          else {
            folmeSetTo((AnimatedScreenElement)localObject);
          }
        }
        else {
          folmeTo((AnimatedScreenElement)localObject);
        }
      }
    }
    
    static enum Type
    {
      static
      {
        Type localType1 = new Type("TO", 0);
        TO = localType1;
        Type localType2 = new Type("SET_TO", 1);
        SET_TO = localType2;
        Type localType3 = new Type("FROM_TO", 2);
        FROM_TO = localType3;
        Type localType4 = new Type("CANCEL", 3);
        CANCEL = localType4;
        Type localType5 = new Type("ADD_RANGE_BOARD", 4);
        ADD_RANGE_BOARD = localType5;
        Type localType6 = new Type("INVALID", 5);
        INVALID = localType6;
        $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6 };
      }
      
      private Type() {}
    }
  }
  
  private static class FrameRateCommand
    extends ActionCommand
  {
    private static final String TAG_NAME = "FrameRateCommand";
    private Expression mRate;
    
    public FrameRateCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      this.mRate = Expression.build(paramScreenElement.getVariables(), paramElement.getAttribute("rate"));
    }
    
    protected void doPerform()
    {
      if (this.mRate != null) {
        getRoot().requestFrameRateByCommand((float)this.mRate.evaluate());
      }
    }
  }
  
  private static class FunctionPerformCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "FunctionCommand";
    
    public FunctionPerformCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mTargetType = ActionCommand.TargetCommand.TargetType.SCREEN_ELEMENT;
    }
    
    public void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof FunctionElement))) {
        ((FunctionElement)localObject).perform();
      }
    }
  }
  
  private static class GraphicsCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "GraphicsCommand";
    private Expression mColorArrayNameExp;
    private Expression mColorExp;
    private ColorParser[] mColorParsers;
    private int[] mColors;
    private CommandType mCommand;
    private String mCurrentColorArrayName;
    private String mCurrentStopArrayName;
    private boolean mIsParamsValid;
    private boolean mIsStopsValid;
    private Expression[] mParamExps;
    private Expression mStopArrayNameExp;
    private Expression[] mStopExps;
    private float[] mStops;
    
    public GraphicsCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      checkExps(paramElement);
      this.mColorArrayNameExp = Expression.build(getVariables(), paramElement.getAttribute("colorArrayNameExp"));
      this.mStopArrayNameExp = Expression.build(getVariables(), paramElement.getAttribute("stopArrayNameExp"));
      this.mColorExp = Expression.build(getVariables(), paramElement.getAttribute("colorExp"));
      parseCommand(paramElement);
    }
    
    private void beginFill(GraphicsElement paramGraphicsElement)
    {
      Object localObject = this.mColorParsers;
      int i;
      if ((localObject != null) && (localObject.length > 0)) {
        i = localObject[0].getColor();
      } else {
        i = -16777216;
      }
      localObject = this.mColorExp;
      if (localObject != null) {
        i = (int)((Expression)localObject).evaluate();
      }
      paramGraphicsElement.beginFill(i);
    }
    
    private void checkExps(Element paramElement)
    {
      Expression[] arrayOfExpression = Expression.buildMultiple(getVariables(), paramElement.getAttribute("paramsExp"));
      this.mParamExps = arrayOfExpression;
      this.mIsParamsValid = isExpressionsValid(arrayOfExpression);
      arrayOfExpression = Expression.buildMultiple(getVariables(), paramElement.getAttribute("stopsExp"));
      this.mStopExps = arrayOfExpression;
      this.mIsStopsValid = isExpressionsValid(arrayOfExpression);
      paramElement = paramElement.getAttribute("colors");
      if (!TextUtils.isEmpty(paramElement))
      {
        paramElement = paramElement.split(",");
        if ((paramElement != null) && (paramElement.length > 0))
        {
          this.mColorParsers = new ColorParser[paramElement.length];
          for (int i = 0; i < paramElement.length; i++) {
            this.mColorParsers[i] = new ColorParser(getVariables(), paramElement[i]);
          }
        }
      }
    }
    
    private void createGradientBox(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 4) {
          paramGraphicsElement.createOrUpdateGradientBox(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()), scale((float)this.mParamExps[3].evaluate()), this.mParamExps[4].evaluateStr());
        }
      }
    }
    
    private void cubicCurveTo(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 5) {
          paramGraphicsElement.cubicCurveTo(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()), scale((float)this.mParamExps[3].evaluate()), scale((float)this.mParamExps[4].evaluate()), scale((float)this.mParamExps[5].evaluate()));
        }
      }
    }
    
    private void curveTo(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 3) {
          paramGraphicsElement.curveTo(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()), scale((float)this.mParamExps[3].evaluate()));
        }
      }
    }
    
    private void drawCircle(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 2) {
          paramGraphicsElement.drawCircle(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()));
        }
      }
    }
    
    private void drawEllipse(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 3) {
          paramGraphicsElement.drawEllipse(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()), scale((float)this.mParamExps[3].evaluate()));
        }
      }
    }
    
    private void drawRect(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 3) {
          paramGraphicsElement.drawRect(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()), scale((float)this.mParamExps[2].evaluate()), scale((float)this.mParamExps[3].evaluate()));
        }
      }
    }
    
    private void drawRoundRect(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 4)
        {
          float f1 = scale((float)arrayOfExpression[0].evaluate());
          float f2 = scale((float)this.mParamExps[1].evaluate());
          float f3 = scale((float)this.mParamExps[2].evaluate());
          float f4 = scale((float)this.mParamExps[3].evaluate());
          float f5 = scale((float)this.mParamExps[4].evaluate());
          arrayOfExpression = this.mParamExps;
          float f6;
          if (arrayOfExpression.length > 5) {
            f6 = scale((float)arrayOfExpression[5].evaluate());
          } else {
            f6 = f5;
          }
          paramGraphicsElement.drawRoundRect(f1, f2, f3, f4, f5, f6);
        }
      }
    }
    
    private void lineStyle(GraphicsElement paramGraphicsElement)
    {
      if ((this.mIsParamsValid) && (this.mParamExps.length > 0))
      {
        int i = -16777216;
        Object localObject = this.mColorExp;
        int j = 0;
        int k;
        if (localObject != null)
        {
          k = (int)((Expression)localObject).evaluate();
        }
        else
        {
          localObject = this.mColorParsers;
          k = i;
          if (localObject != null)
          {
            k = i;
            if (localObject.length > 0) {
              k = localObject[0].getColor();
            }
          }
        }
        float f = scale((float)this.mParamExps[0].evaluate());
        localObject = this.mParamExps;
        if (localObject.length > 1) {
          i = (int)localObject[1].evaluate();
        } else {
          i = 0;
        }
        localObject = this.mParamExps;
        int m;
        if (localObject.length > 2) {
          m = (int)localObject[2].evaluate();
        } else {
          m = 0;
        }
        localObject = this.mParamExps;
        if (localObject.length > 3) {
          j = (int)localObject[3].evaluate();
        }
        paramGraphicsElement.lineStyle(f, k, i, m, j);
      }
    }
    
    private void lineTo(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 1) {
          paramGraphicsElement.lineTo(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()));
        }
      }
    }
    
    private void moveTo(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Expression[] arrayOfExpression = this.mParamExps;
        if (arrayOfExpression.length > 1) {
          paramGraphicsElement.moveTo(scale((float)arrayOfExpression[0].evaluate()), scale((float)this.mParamExps[1].evaluate()));
        }
      }
    }
    
    private void parseColor()
    {
      if (this.mColorArrayNameExp != null)
      {
        parseColorByArrayName();
      }
      else
      {
        ColorParser[] arrayOfColorParser = this.mColorParsers;
        if ((arrayOfColorParser != null) && (arrayOfColorParser.length > 1)) {
          parseColorByParsers();
        }
      }
    }
    
    private void parseColorByArrayName()
    {
      Object localObject = this.mColorArrayNameExp.evaluateStr();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        if (!((String)localObject).equals(this.mCurrentColorArrayName))
        {
          this.mCurrentColorArrayName = ((String)localObject);
          localObject = new IndexedVariable((String)localObject, getVariables(), false).get();
          if ((localObject != null) && ((localObject instanceof int[])))
          {
            localObject = (int[])localObject;
            if (localObject.length > 1)
            {
              this.mColors = ((int[])localObject);
              return;
            }
          }
          this.mColors = null;
        }
      }
      else {
        this.mColors = null;
      }
    }
    
    private void parseColorByParsers()
    {
      if (this.mColors == null) {
        this.mColors = new int[this.mColorParsers.length];
      }
      for (int i = 0;; i++)
      {
        ColorParser[] arrayOfColorParser = this.mColorParsers;
        if (i >= arrayOfColorParser.length) {
          break;
        }
        this.mColors[i] = arrayOfColorParser[i].getColor();
      }
    }
    
    private void parseCommand(Element paramElement)
    {
      paramElement = paramElement.getAttribute("command");
      paramElement.hashCode();
      int i = paramElement.hashCode();
      int j = -1;
      switch (i)
      {
      default: 
        break;
      case 1780535802: 
        if (paramElement.equals("drawEllipse")) {
          j = 13;
        }
        break;
      case 1312120860: 
        if (paramElement.equals("beginGradientFill")) {
          j = 12;
        }
        break;
      case 1127058378: 
        if (paramElement.equals("curveTo")) {
          j = 11;
        }
        break;
      case 753006880: 
        if (paramElement.equals("cubicCurveTo")) {
          j = 10;
        }
        break;
      case 137996206: 
        if (paramElement.equals("drawRoundRect")) {
          j = 9;
        }
        break;
      case 80105951: 
        if (paramElement.equals("createGradientBox")) {
          j = 8;
        }
        break;
      case 27279565: 
        if (paramElement.equals("lineGradientStyle")) {
          j = 7;
        }
        break;
      case -556608716: 
        if (paramElement.equals("drawCircle")) {
          j = 6;
        }
        break;
      case -826951352: 
        if (paramElement.equals("drawRect")) {
          j = 5;
        }
        break;
      case -1068263892: 
        if (paramElement.equals("moveTo")) {
          j = 4;
        }
        break;
      case -1073257012: 
        if (paramElement.equals("beginFill")) {
          j = 3;
        }
        break;
      case -1102672497: 
        if (paramElement.equals("lineTo")) {
          j = 2;
        }
        break;
      case -1741117076: 
        if (paramElement.equals("setRenderListener")) {
          j = 1;
        }
        break;
      case -1807133155: 
        if (paramElement.equals("lineStyle")) {
          j = 0;
        }
        break;
      }
      switch (j)
      {
      default: 
        this.mCommand = CommandType.INVALID;
        break;
      case 13: 
        this.mCommand = CommandType.DRAW_ELLIPSE;
        break;
      case 12: 
        this.mCommand = CommandType.BEGIN_GRADIENT_FILL;
        break;
      case 11: 
        this.mCommand = CommandType.CURVE_TO;
        break;
      case 10: 
        this.mCommand = CommandType.CUBIC_CURVE_TO;
        break;
      case 9: 
        this.mCommand = CommandType.DRAW_ROUND_RECT;
        break;
      case 8: 
        this.mCommand = CommandType.CREATE_GRADIENT_BOX;
        break;
      case 7: 
        this.mCommand = CommandType.LINE_GRADIENT_STYLE;
        break;
      case 6: 
        this.mCommand = CommandType.DRAW_CIRCLE;
        break;
      case 5: 
        this.mCommand = CommandType.DRAW_RECT;
        break;
      case 4: 
        this.mCommand = CommandType.MOVE_TO;
        break;
      case 3: 
        this.mCommand = CommandType.BEGIN_FILL;
        break;
      case 2: 
        this.mCommand = CommandType.LINE_TO;
        break;
      case 1: 
        this.mCommand = CommandType.SET_RENDER_LISTENER;
        break;
      case 0: 
        this.mCommand = CommandType.LINE_STYLE;
      }
    }
    
    private void parseStop()
    {
      if (this.mStopArrayNameExp != null) {
        parseStopByArrayName();
      } else if (this.mIsStopsValid) {
        parseStopByExp();
      }
    }
    
    private void parseStopByArrayName()
    {
      Object localObject = this.mStopArrayNameExp.evaluateStr();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        if (!((String)localObject).equals(this.mCurrentStopArrayName))
        {
          this.mCurrentStopArrayName = ((String)localObject);
          localObject = new IndexedVariable((String)localObject, getVariables(), false).get();
          if ((localObject != null) && ((localObject instanceof float[])))
          {
            localObject = (float[])localObject;
            if (localObject.length > 1)
            {
              this.mStops = ((float[])localObject);
              return;
            }
          }
          this.mStops = null;
        }
      }
      else {
        this.mStops = null;
      }
    }
    
    private void parseStopByExp()
    {
      if (this.mStops == null) {
        this.mStops = new float[this.mStopExps.length];
      }
      for (int i = 0;; i++)
      {
        Expression[] arrayOfExpression = this.mStopExps;
        if (i >= arrayOfExpression.length) {
          break;
        }
        this.mStops[i] = ((float)arrayOfExpression[i].evaluate());
      }
    }
    
    private float scale(float paramFloat)
    {
      return paramFloat * getRoot().getScale();
    }
    
    private void setRenderListener(GraphicsElement paramGraphicsElement)
    {
      if (this.mIsParamsValid)
      {
        Object localObject = this.mParamExps;
        if (localObject.length > 0)
        {
          localObject = localObject[0].evaluateStr();
          localObject = getRoot().findElement((String)localObject);
          if ((localObject != null) && ((localObject instanceof FunctionElement))) {
            paramGraphicsElement.setRenderListener((FunctionElement)localObject);
          }
        }
      }
    }
    
    private void setShader(GraphicsElement paramGraphicsElement)
    {
      if ((this.mIsParamsValid) && (this.mParamExps.length > 2))
      {
        parseColor();
        parseStop();
        Object localObject1 = this.mColors;
        if ((localObject1 != null) && (localObject1.length >= 2))
        {
          Object localObject2 = this.mStops;
          if ((localObject2 != null) && (localObject2.length != localObject1.length))
          {
            Log.e("GraphicsCommand", "color and position arrays must be of equal length");
            return;
          }
          localObject2 = this.mParamExps;
          int i = 0;
          int j = (int)localObject2[0].evaluate();
          localObject2 = this.mParamExps[1].evaluateStr();
          localObject1 = this.mParamExps[2].evaluateStr();
          Object localObject3 = this.mParamExps;
          if (localObject3.length > 3) {
            i = (int)localObject3[3].evaluate();
          }
          localObject3 = this.mCommand;
          if (localObject3 == CommandType.LINE_GRADIENT_STYLE) {
            paramGraphicsElement.lineGradientStyle(j, this.mColors, this.mStops, (String)localObject2, (String)localObject1, i);
          } else if (localObject3 == CommandType.BEGIN_GRADIENT_FILL) {
            paramGraphicsElement.beginGradientFill(j, this.mColors, this.mStops, (String)localObject2, (String)localObject1, i);
          }
        }
        else
        {
          Log.e("GraphicsCommand", "needs >= 2 number of colors");
        }
      }
    }
    
    protected void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof GraphicsElement)))
      {
        localObject = (GraphicsElement)localObject;
        switch (ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$GraphicsCommand$CommandType[this.mCommand.ordinal()])
        {
        default: 
          break;
        case 14: 
          setRenderListener((GraphicsElement)localObject);
          break;
        case 13: 
          createGradientBox((GraphicsElement)localObject);
          break;
        case 11: 
        case 12: 
          setShader((GraphicsElement)localObject);
          break;
        case 10: 
          drawRoundRect((GraphicsElement)localObject);
          break;
        case 9: 
          cubicCurveTo((GraphicsElement)localObject);
          break;
        case 8: 
          drawEllipse((GraphicsElement)localObject);
          break;
        case 7: 
          drawCircle((GraphicsElement)localObject);
          break;
        case 6: 
          lineStyle((GraphicsElement)localObject);
          break;
        case 5: 
          beginFill((GraphicsElement)localObject);
          break;
        case 4: 
          drawRect((GraphicsElement)localObject);
          break;
        case 3: 
          curveTo((GraphicsElement)localObject);
          break;
        case 2: 
          moveTo((GraphicsElement)localObject);
          break;
        case 1: 
          lineTo((GraphicsElement)localObject);
        }
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("BEGIN_FILL", 1);
        BEGIN_FILL = localCommandType2;
        CommandType localCommandType3 = new CommandType("BEGIN_GRADIENT_FILL", 2);
        BEGIN_GRADIENT_FILL = localCommandType3;
        CommandType localCommandType4 = new CommandType("CREATE_GRADIENT_BOX", 3);
        CREATE_GRADIENT_BOX = localCommandType4;
        CommandType localCommandType5 = new CommandType("CURVE_TO", 4);
        CURVE_TO = localCommandType5;
        CommandType localCommandType6 = new CommandType("CUBIC_CURVE_TO", 5);
        CUBIC_CURVE_TO = localCommandType6;
        CommandType localCommandType7 = new CommandType("DRAW_CIRCLE", 6);
        DRAW_CIRCLE = localCommandType7;
        CommandType localCommandType8 = new CommandType("DRAW_ELLIPSE", 7);
        DRAW_ELLIPSE = localCommandType8;
        CommandType localCommandType9 = new CommandType("DRAW_RECT", 8);
        DRAW_RECT = localCommandType9;
        CommandType localCommandType10 = new CommandType("DRAW_ROUND_RECT", 9);
        DRAW_ROUND_RECT = localCommandType10;
        CommandType localCommandType11 = new CommandType("LINE_GRADIENT_STYLE", 10);
        LINE_GRADIENT_STYLE = localCommandType11;
        CommandType localCommandType12 = new CommandType("LINE_STYLE", 11);
        LINE_STYLE = localCommandType12;
        CommandType localCommandType13 = new CommandType("LINE_TO", 12);
        LINE_TO = localCommandType13;
        CommandType localCommandType14 = new CommandType("MOVE_TO", 13);
        MOVE_TO = localCommandType14;
        CommandType localCommandType15 = new CommandType("SET_RENDER_LISTENER", 14);
        SET_RENDER_LISTENER = localCommandType15;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3, localCommandType4, localCommandType5, localCommandType6, localCommandType7, localCommandType8, localCommandType9, localCommandType10, localCommandType11, localCommandType12, localCommandType13, localCommandType14, localCommandType15 };
      }
      
      private CommandType() {}
    }
  }
  
  private static class IfCommand
    extends ActionCommand
  {
    private static final String ALTERNATE = "Alternate";
    private static final String CONSEQUENT = "Consequent";
    public static final String TAG_NAME = "IfCommand";
    private ActionCommand.MultiCommand mAlternateCommand;
    private Expression mCondition;
    private ActionCommand.MultiCommand mConsequentCommand;
    
    public IfCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      this.mCondition = Expression.build(paramScreenElement.getVariables(), paramElement.getAttribute("ifCondition"));
      NodeList localNodeList = paramElement.getChildNodes();
      for (int i = 0; i < localNodeList.getLength(); i++) {
        if (localNodeList.item(i).getNodeType() == 1)
        {
          Element localElement = (Element)localNodeList.item(i);
          paramElement = localElement.getTagName();
          if (("Consequent".equalsIgnoreCase(paramElement)) && (this.mConsequentCommand == null)) {
            this.mConsequentCommand = new ActionCommand.MultiCommand(paramScreenElement, localElement);
          } else if (("Alternate".equalsIgnoreCase(paramElement)) && (this.mAlternateCommand == null)) {
            this.mAlternateCommand = new ActionCommand.MultiCommand(paramScreenElement, localElement);
          }
        }
      }
    }
    
    public void doPerform()
    {
      Object localObject = this.mCondition;
      if (localObject != null) {
        if (((Expression)localObject).evaluate() <= 0.0D)
        {
          localObject = this.mAlternateCommand;
          if (localObject != null) {
            ((ActionCommand)localObject).perform();
          }
        }
        else
        {
          localObject = this.mConsequentCommand;
          if (localObject != null) {
            ((ActionCommand)localObject).perform();
          }
        }
      }
    }
    
    public void finish()
    {
      ActionCommand.MultiCommand localMultiCommand = this.mAlternateCommand;
      if (localMultiCommand != null) {
        localMultiCommand.finish();
      }
      localMultiCommand = this.mConsequentCommand;
      if (localMultiCommand != null) {
        localMultiCommand.finish();
      }
    }
    
    public void init()
    {
      ActionCommand.MultiCommand localMultiCommand = this.mAlternateCommand;
      if (localMultiCommand != null) {
        localMultiCommand.init();
      }
      localMultiCommand = this.mConsequentCommand;
      if (localMultiCommand != null) {
        localMultiCommand.init();
      }
    }
    
    public void pause()
    {
      ActionCommand.MultiCommand localMultiCommand = this.mAlternateCommand;
      if (localMultiCommand != null) {
        localMultiCommand.pause();
      }
      localMultiCommand = this.mConsequentCommand;
      if (localMultiCommand != null) {
        localMultiCommand.pause();
      }
    }
    
    public void resume()
    {
      ActionCommand.MultiCommand localMultiCommand = this.mAlternateCommand;
      if (localMultiCommand != null) {
        localMultiCommand.resume();
      }
      localMultiCommand = this.mConsequentCommand;
      if (localMultiCommand != null) {
        localMultiCommand.resume();
      }
    }
  }
  
  private static class IntentCommand
    extends ActionCommand
  {
    private static final String TAG_FALLBACK = "Fallback";
    public static final String TAG_NAME = "IntentCommand";
    private ActionCommand.ObjVar mActivityOptionsBundle;
    private CommandTrigger mFallbackTrigger;
    private int mFlags;
    private Intent mIntent;
    private IntentInfo mIntentInfo;
    private IntentType mIntentType;
    private IndexedVariable mIntentVar;
    
    public IntentCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      Object localObject = IntentType.Activity;
      this.mIntentType = ((IntentType)localObject);
      this.mIntentInfo = new IntentInfo(paramElement, getVariables());
      boolean bool = Boolean.parseBoolean(paramElement.getAttribute("broadcast"));
      String str = paramElement.getAttribute("type");
      if ((!bool) && (!"broadcast".equals(str)))
      {
        if ("service".equals(str))
        {
          this.mIntentType = IntentType.Service;
        }
        else if ("activity".equals(str))
        {
          this.mIntentType = ((IntentType)localObject);
        }
        else if ("var".equals(str))
        {
          this.mIntentType = IntentType.Var;
          localObject = paramElement.getAttribute("intentVar");
          if (!TextUtils.isEmpty((CharSequence)localObject)) {
            this.mIntentVar = new IndexedVariable((String)localObject, getVariables(), false);
          }
        }
      }
      else {
        this.mIntentType = IntentType.Broadcast;
      }
      this.mFlags = Utils.getAttrAsInt(paramElement, "flags", -1);
      localObject = paramElement.getAttribute("activityOption");
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        localObject = null;
      } else {
        localObject = new ActionCommand.ObjVar((String)localObject, getVariables());
      }
      this.mActivityOptionsBundle = ((ActionCommand.ObjVar)localObject);
      paramElement = Utils.getChild(paramElement, "Fallback");
      if (paramElement != null) {
        this.mFallbackTrigger = new CommandTrigger(paramElement, paramScreenElement);
      }
    }
    
    protected void doPerform()
    {
      Object localObject1 = this.mIntent;
      if (localObject1 != null)
      {
        this.mIntentInfo.update((Intent)localObject1);
        try
        {
          int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType[this.mIntentType.ordinal()];
          if (i != 1)
          {
            if (i != 2)
            {
              if (i != 3)
              {
                if (i == 4)
                {
                  localObject1 = this.mIntentVar;
                  if (localObject1 != null) {
                    ((IndexedVariable)localObject1).set(this.mIntent);
                  }
                }
              }
              else {
                Utils.startService(getContext(), this.mIntent);
              }
            }
            else {
              Utils.sendBroadcast(getContext(), this.mIntent);
            }
          }
          else
          {
            localObject1 = this.mActivityOptionsBundle;
            if (localObject1 != null) {
              localObject1 = (Bundle)((ActionCommand.ObjVar)localObject1).get();
            } else {
              localObject1 = null;
            }
            Object localObject2 = getContext().getPackageManager().queryIntentActivities(this.mIntent, 65536);
            if ((localObject2 != null) && (((List)localObject2).size() > 0))
            {
              localObject2 = getScreenElement().getRoot().getContextAndRect();
              if (localObject2 != null)
              {
                this.mIntent.putExtra("maml_view_location_on_screen", (Parcelable)((Pair)localObject2).second);
                Utils.startActivity((Context)((Pair)localObject2).first, this.mIntent, (Bundle)localObject1);
              }
              else
              {
                Utils.startActivity(getContext(), this.mIntent, (Bundle)localObject1);
              }
            }
            else
            {
              if (!TextUtils.isEmpty(this.mIntent.getPackage()))
              {
                localObject2 = this.mIntent.getPackage();
              }
              else
              {
                if (TextUtils.isEmpty(this.mIntent.getComponent().getPackageName())) {
                  break label286;
                }
                localObject2 = this.mIntent.getComponent().getPackageName();
              }
              HideSdkDependencyUtils.PreloadedAppPolicy_installPreloadedDataApp(getContext(), (String)localObject2, this.mIntent, (Bundle)localObject1);
              return;
              label286:
              return;
            }
          }
        }
        catch (Exception localException)
        {
          if (this.mFallbackTrigger != null)
          {
            Log.i("ActionCommand", "fail to send Intent, fallback...");
            this.mFallbackTrigger.perform();
          }
          else
          {
            Log.e("ActionCommand", localException.toString());
          }
        }
      }
    }
    
    public void finish()
    {
      CommandTrigger localCommandTrigger = this.mFallbackTrigger;
      if (localCommandTrigger != null) {
        localCommandTrigger.finish();
      }
    }
    
    public void init()
    {
      Object localObject = getRoot().findTask(this.mIntentInfo.getId());
      if ((localObject != null) && (!TextUtils.isEmpty(((Task)localObject).action))) {
        this.mIntentInfo.set((Task)localObject);
      }
      if (Utils.isProtectedIntent(this.mIntentInfo.getAction())) {
        return;
      }
      localObject = new Intent();
      this.mIntent = ((Intent)localObject);
      this.mIntentInfo.update((Intent)localObject);
      int i = this.mFlags;
      if (i != -1) {
        this.mIntent.setFlags(i);
      } else if (this.mIntentType == IntentType.Activity) {
        this.mIntent.setFlags(872415232);
      }
      localObject = this.mFallbackTrigger;
      if (localObject != null) {
        ((CommandTrigger)localObject).init();
      }
    }
    
    public void pause()
    {
      CommandTrigger localCommandTrigger = this.mFallbackTrigger;
      if (localCommandTrigger != null) {
        localCommandTrigger.pause();
      }
    }
    
    public void resume()
    {
      CommandTrigger localCommandTrigger = this.mFallbackTrigger;
      if (localCommandTrigger != null) {
        localCommandTrigger.resume();
      }
    }
    
    private static enum IntentType
    {
      static
      {
        IntentType localIntentType1 = new IntentType("Activity", 0);
        Activity = localIntentType1;
        IntentType localIntentType2 = new IntentType("Broadcast", 1);
        Broadcast = localIntentType2;
        IntentType localIntentType3 = new IntentType("Service", 2);
        Service = localIntentType3;
        IntentType localIntentType4 = new IntentType("Var", 3);
        Var = localIntentType4;
        $VALUES = new IntentType[] { localIntentType1, localIntentType2, localIntentType3, localIntentType4 };
      }
      
      private IntentType() {}
    }
  }
  
  private static class JsonObjectCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "JsonObjectCommand";
    private CommandType mCommand;
    private Expression mNameExp;
    private Expression mValueExp;
    
    public JsonObjectCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = paramElement.getAttribute("command");
      this.mNameExp = Expression.build(getVariables(), paramElement.getAttribute("nameExp"));
      this.mValueExp = Expression.build(getVariables(), paramElement.getAttribute("valueExp"));
      paramScreenElement.hashCode();
      int i = paramScreenElement.hashCode();
      int j = -1;
      switch (i)
      {
      default: 
        break;
      case 1355207682: 
        if (paramScreenElement.equals("putJsonArray")) {
          j = 5;
        }
        break;
      case 478450201: 
        if (paramScreenElement.equals("putBoolean")) {
          j = 4;
        }
        break;
      case -462997504: 
        if (paramScreenElement.equals("putString")) {
          j = 3;
        }
        break;
      case -552438090: 
        if (paramScreenElement.equals("putJsonObject")) {
          j = 2;
        }
        break;
      case -934610812: 
        if (paramScreenElement.equals("remove")) {
          j = 1;
        }
        break;
      case -976920992: 
        if (paramScreenElement.equals("putInt")) {
          j = 0;
        }
        break;
      }
      switch (j)
      {
      default: 
        this.mCommand = CommandType.INVALID;
        break;
      case 5: 
        this.mCommand = CommandType.PUT_JSON_ARRAY;
        break;
      case 4: 
        this.mCommand = CommandType.PUT_BOOLEAN;
        break;
      case 3: 
        this.mCommand = CommandType.PUT_STRING;
        break;
      case 2: 
        this.mCommand = CommandType.PUT_JSON_OBJECT;
        break;
      case 1: 
        this.mCommand = CommandType.REMOVE;
        break;
      case 0: 
        this.mCommand = CommandType.PUT_INT;
      }
      this.mTargetType = ActionCommand.TargetCommand.TargetType.VARIABLE;
    }
    
    public void doPerform()
    {
      Object localObject1 = getTarget();
      JSONObject localJSONObject;
      Object localObject3;
      if ((localObject1 != null) && ((localObject1 instanceof JSONObject)))
      {
        localJSONObject = (JSONObject)localObject1;
        Object localObject2 = this.mCommand;
        CommandType localCommandType = CommandType.REMOVE;
        localObject3 = null;
        localObject1 = null;
        if (localObject2 == localCommandType)
        {
          localObject3 = this.mNameExp;
          if (localObject3 != null) {
            localObject1 = ((Expression)localObject3).evaluateStr();
          }
          if (localObject1 != null)
          {
            localJSONObject.remove((String)localObject1);
            getVariables().put(this.mTargetName, localJSONObject);
          }
        }
        else
        {
          int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType[localObject2.ordinal()];
          boolean bool = true;
          if (i != 1) {
            if (i != 2) {
              if (i != 3) {
                if (i != 4) {
                  if (i == 5)
                  {
                    localObject1 = this.mValueExp;
                    if (localObject1 != null)
                    {
                      localObject1 = ((Expression)localObject1).evaluateStr();
                      if (("0".equals(localObject1)) || ("false".equals(localObject1))) {
                        bool = false;
                      }
                      localObject1 = Boolean.valueOf(bool);
                      break label250;
                    }
                  }
                }
              }
            }
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  localObject1 = null;
                  break;
                  localObject1 = this.mValueExp;
                } while (localObject1 == null);
                localObject1 = ((Expression)localObject1).evaluateJsonArray();
                break;
                localObject1 = this.mValueExp;
              } while (localObject1 == null);
              localObject1 = ((Expression)localObject1).evaluateJsonObject();
              break;
              localObject1 = this.mValueExp;
            } while (localObject1 == null);
            localObject1 = ((Expression)localObject1).evaluateStr();
            break;
            localObject1 = this.mValueExp;
          } while (localObject1 == null);
          localObject1 = Double.valueOf(((Expression)localObject1).evaluate());
          label250:
          localObject2 = this.mNameExp;
          if (localObject2 != null) {
            localObject3 = ((Expression)localObject2).evaluateStr();
          }
          if ((localObject3 == null) || (localObject1 == null)) {}
        }
      }
      try
      {
        localJSONObject.put((String)localObject3, localObject1);
        getVariables().put(this.mTargetName, localJSONObject);
        label294:
        return;
      }
      catch (JSONException localJSONException)
      {
        break label294;
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("PUT_STRING", 1);
        PUT_STRING = localCommandType2;
        CommandType localCommandType3 = new CommandType("PUT_BOOLEAN", 2);
        PUT_BOOLEAN = localCommandType3;
        CommandType localCommandType4 = new CommandType("PUT_INT", 3);
        PUT_INT = localCommandType4;
        CommandType localCommandType5 = new CommandType("PUT_JSON_OBJECT", 4);
        PUT_JSON_OBJECT = localCommandType5;
        CommandType localCommandType6 = new CommandType("PUT_JSON_ARRAY", 5);
        PUT_JSON_ARRAY = localCommandType6;
        CommandType localCommandType7 = new CommandType("REMOVE", 6);
        REMOVE = localCommandType7;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3, localCommandType4, localCommandType5, localCommandType6, localCommandType7 };
      }
      
      private CommandType() {}
    }
  }
  
  private static class LoopCommand
    extends ActionCommand.MultiCommand
  {
    private static final long COUNT_WARNING = 10000L;
    public static final String TAG_NAME = "LoopCommand";
    private Expression mBeginExp;
    private Expression mConditionExp;
    private Expression mCountExp;
    private Expression mEndExp;
    private IndexedVariable mIndexVar;
    
    public LoopCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      Object localObject = paramElement.getAttribute("indexName");
      paramScreenElement = getVariables();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        this.mIndexVar = new IndexedVariable((String)localObject, paramScreenElement, true);
      }
      this.mBeginExp = Expression.build(paramScreenElement, paramElement.getAttribute("begin"));
      localObject = Expression.build(paramScreenElement, paramElement.getAttribute("count"));
      this.mCountExp = ((Expression)localObject);
      if (localObject == null) {
        this.mEndExp = Expression.build(paramScreenElement, paramElement.getAttribute("end"));
      }
      this.mConditionExp = Expression.build(paramScreenElement, paramElement.getAttribute("loopCondition"));
    }
    
    protected void doPerform()
    {
      Object localObject = this.mBeginExp;
      int i;
      if (localObject == null) {
        i = 0;
      } else {
        i = (int)((Expression)localObject).evaluate();
      }
      localObject = this.mCountExp;
      int j;
      if (localObject != null)
      {
        j = (int)((Expression)localObject).evaluate() + i - 1;
      }
      else
      {
        localObject = this.mEndExp;
        if (localObject == null) {
          j = 0;
        } else {
          j = (int)((Expression)localObject).evaluate();
        }
      }
      int k = j - i;
      int m = i;
      if (k > 10000L)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("count is too large: ");
        ((StringBuilder)localObject).append(k);
        ((StringBuilder)localObject).append(", exceeds WARNING ");
        ((StringBuilder)localObject).append(10000L);
        Log.w("ActionCommand", ((StringBuilder)localObject).toString());
      }
      for (m = i; m <= j; m++)
      {
        localObject = this.mConditionExp;
        if ((localObject != null) && (((Expression)localObject).evaluate() <= 0.0D)) {
          break;
        }
        localObject = this.mIndexVar;
        if (localObject != null) {
          ((IndexedVariable)localObject).set(m);
        }
        k = this.mCommands.size();
        for (i = 0; i < k; i++) {
          ((ActionCommand)this.mCommands.get(i)).perform();
        }
      }
    }
  }
  
  private static class MethodCommand
    extends ActionCommand.BaseMethodCommand
  {
    public static final String TAG_NAME = "MethodCommand";
    private Constructor<?> mCtor;
    private Method mMethod;
    private String mMethodName;
    
    public MethodCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mMethodName = paramElement.getAttribute("method");
      paramScreenElement = new StringBuilder();
      paramScreenElement.append("MethodCommand, ");
      paramScreenElement.append(this.mLogStr);
      paramScreenElement.append(", method=");
      paramScreenElement.append(this.mMethodName);
      paramScreenElement.append("\n    ");
      this.mLogStr = paramScreenElement.toString();
    }
    
    /* Error */
    protected void doPerform()
    {
      // Byte code:
      //   0: aload_0
      //   1: invokevirtual 61	com/miui/maml/ActionCommand$BaseMethodCommand:prepareParams	()V
      //   4: aconst_null
      //   5: astore_1
      //   6: iconst_0
      //   7: istore_2
      //   8: iconst_0
      //   9: istore_3
      //   10: iconst_0
      //   11: istore 4
      //   13: iload_2
      //   14: istore 5
      //   16: iload_3
      //   17: istore 6
      //   19: getstatic 67	com/miui/maml/ActionCommand$1:$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType	[I
      //   22: aload_0
      //   23: getfield 71	com/miui/maml/ActionCommand$TargetCommand:mTargetType	Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
      //   26: invokevirtual 77	java/lang/Enum:ordinal	()I
      //   29: iaload
      //   30: istore 7
      //   32: iload 7
      //   34: iconst_1
      //   35: if_icmpeq +63 -> 98
      //   38: iload 7
      //   40: iconst_2
      //   41: if_icmpeq +57 -> 98
      //   44: iload 7
      //   46: iconst_5
      //   47: if_icmpeq +6 -> 53
      //   50: goto +117 -> 167
      //   53: iload_2
      //   54: istore 5
      //   56: iload_3
      //   57: istore 6
      //   59: aload_0
      //   60: getfield 79	com/miui/maml/ActionCommand$MethodCommand:mCtor	Ljava/lang/reflect/Constructor;
      //   63: astore 8
      //   65: aload 8
      //   67: ifnull +25 -> 92
      //   70: iload_2
      //   71: istore 5
      //   73: iload_3
      //   74: istore 6
      //   76: aload 8
      //   78: aload_0
      //   79: getfield 83	com/miui/maml/ActionCommand$BaseMethodCommand:mParamValues	[Ljava/lang/Object;
      //   82: invokevirtual 89	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
      //   85: astore_1
      //   86: iconst_1
      //   87: istore 4
      //   89: goto +78 -> 167
      //   92: iconst_m1
      //   93: istore 4
      //   95: goto +72 -> 167
      //   98: iload_2
      //   99: istore 5
      //   101: iload_3
      //   102: istore 6
      //   104: aload_0
      //   105: getfield 91	com/miui/maml/ActionCommand$MethodCommand:mMethod	Ljava/lang/reflect/Method;
      //   108: ifnonnull +13 -> 121
      //   111: iload_2
      //   112: istore 5
      //   114: iload_3
      //   115: istore 6
      //   117: aload_0
      //   118: invokevirtual 94	com/miui/maml/ActionCommand$MethodCommand:loadMethod	()V
      //   121: iload_2
      //   122: istore 5
      //   124: iload_3
      //   125: istore 6
      //   127: aload_0
      //   128: getfield 91	com/miui/maml/ActionCommand$MethodCommand:mMethod	Ljava/lang/reflect/Method;
      //   131: ifnull -39 -> 92
      //   134: iload_2
      //   135: istore 5
      //   137: iload_3
      //   138: istore 6
      //   140: aload_0
      //   141: invokevirtual 98	com/miui/maml/ActionCommand$TargetCommand:getTarget	()Ljava/lang/Object;
      //   144: astore_1
      //   145: iload_2
      //   146: istore 5
      //   148: iload_3
      //   149: istore 6
      //   151: aload_0
      //   152: getfield 91	com/miui/maml/ActionCommand$MethodCommand:mMethod	Ljava/lang/reflect/Method;
      //   155: aload_1
      //   156: aload_0
      //   157: getfield 83	com/miui/maml/ActionCommand$BaseMethodCommand:mParamValues	[Ljava/lang/Object;
      //   160: invokevirtual 104	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
      //   163: astore_1
      //   164: goto -78 -> 86
      //   167: iload 4
      //   169: istore 5
      //   171: iload 4
      //   173: istore 6
      //   175: aload_0
      //   176: getfield 108	com/miui/maml/ActionCommand$BaseMethodCommand:mReturnVar	Lcom/miui/maml/data/IndexedVariable;
      //   179: astore 8
      //   181: aload 8
      //   183: ifnull +18 -> 201
      //   186: iload 4
      //   188: istore 5
      //   190: iload 4
      //   192: istore 6
      //   194: aload 8
      //   196: aload_1
      //   197: invokevirtual 114	com/miui/maml/data/IndexedVariable:set	(Ljava/lang/Object;)Z
      //   200: pop
      //   201: aload_0
      //   202: getfield 117	com/miui/maml/ActionCommand$BaseMethodCommand:mErrorCodeVar	Lcom/miui/maml/data/IndexedVariable;
      //   205: astore_1
      //   206: aload_1
      //   207: ifnull +183 -> 390
      //   210: aload_1
      //   211: iload 4
      //   213: i2d
      //   214: invokevirtual 120	com/miui/maml/data/IndexedVariable:set	(D)V
      //   217: goto +173 -> 390
      //   220: astore 8
      //   222: goto +169 -> 391
      //   225: astore 9
      //   227: iload 6
      //   229: istore 5
      //   231: aload 9
      //   233: invokevirtual 126	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
      //   236: astore_1
      //   237: iload 6
      //   239: istore 5
      //   241: new 32	java/lang/StringBuilder
      //   244: astore 8
      //   246: iload 6
      //   248: istore 5
      //   250: aload 8
      //   252: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   255: iload 6
      //   257: istore 5
      //   259: aload 8
      //   261: aload_0
      //   262: getfield 46	com/miui/maml/ActionCommand$TargetCommand:mLogStr	Ljava/lang/String;
      //   265: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   268: pop
      //   269: iload 6
      //   271: istore 5
      //   273: aload 8
      //   275: aload 9
      //   277: invokevirtual 129	java/lang/Object:toString	()Ljava/lang/String;
      //   280: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   283: pop
      //   284: aload_1
      //   285: ifnull +60 -> 345
      //   288: iload 6
      //   290: istore 5
      //   292: new 32	java/lang/StringBuilder
      //   295: astore 9
      //   297: iload 6
      //   299: istore 5
      //   301: aload 9
      //   303: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   306: iload 6
      //   308: istore 5
      //   310: aload 9
      //   312: ldc 131
      //   314: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   317: pop
      //   318: iload 6
      //   320: istore 5
      //   322: aload 9
      //   324: aload_1
      //   325: invokevirtual 132	java/lang/Throwable:toString	()Ljava/lang/String;
      //   328: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   331: pop
      //   332: iload 6
      //   334: istore 5
      //   336: aload 9
      //   338: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   341: astore_1
      //   342: goto +6 -> 348
      //   345: ldc 134
      //   347: astore_1
      //   348: iload 6
      //   350: istore 5
      //   352: aload 8
      //   354: aload_1
      //   355: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   358: pop
      //   359: iload 6
      //   361: istore 5
      //   363: ldc 136
      //   365: aload 8
      //   367: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   370: invokestatic 142	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   373: pop
      //   374: aload_0
      //   375: getfield 117	com/miui/maml/ActionCommand$BaseMethodCommand:mErrorCodeVar	Lcom/miui/maml/data/IndexedVariable;
      //   378: astore_1
      //   379: aload_1
      //   380: ifnull +10 -> 390
      //   383: aload_1
      //   384: bipush 254
      //   386: i2d
      //   387: invokevirtual 120	com/miui/maml/data/IndexedVariable:set	(D)V
      //   390: return
      //   391: aload_0
      //   392: getfield 117	com/miui/maml/ActionCommand$BaseMethodCommand:mErrorCodeVar	Lcom/miui/maml/data/IndexedVariable;
      //   395: astore_1
      //   396: aload_1
      //   397: ifnull +10 -> 407
      //   400: aload_1
      //   401: iload 5
      //   403: i2d
      //   404: invokevirtual 120	com/miui/maml/data/IndexedVariable:set	(D)V
      //   407: aload 8
      //   409: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	410	0	this	MethodCommand
      //   5	396	1	localObject1	Object
      //   7	139	2	i	int
      //   9	140	3	j	int
      //   11	201	4	k	int
      //   14	388	5	m	int
      //   17	343	6	n	int
      //   30	18	7	i1	int
      //   63	132	8	localObject2	Object
      //   220	1	8	localObject3	Object
      //   244	164	8	localStringBuilder1	StringBuilder
      //   225	51	9	localException	Exception
      //   295	42	9	localStringBuilder2	StringBuilder
      // Exception table:
      //   from	to	target	type
      //   19	32	220	finally
      //   59	65	220	finally
      //   76	86	220	finally
      //   104	111	220	finally
      //   117	121	220	finally
      //   127	134	220	finally
      //   140	145	220	finally
      //   151	164	220	finally
      //   175	181	220	finally
      //   194	201	220	finally
      //   231	237	220	finally
      //   241	246	220	finally
      //   250	255	220	finally
      //   259	269	220	finally
      //   273	284	220	finally
      //   292	297	220	finally
      //   301	306	220	finally
      //   310	318	220	finally
      //   322	332	220	finally
      //   336	342	220	finally
      //   352	359	220	finally
      //   363	374	220	finally
      //   19	32	225	java/lang/Exception
      //   59	65	225	java/lang/Exception
      //   76	86	225	java/lang/Exception
      //   104	111	225	java/lang/Exception
      //   117	121	225	java/lang/Exception
      //   127	134	225	java/lang/Exception
      //   140	145	225	java/lang/Exception
      //   151	164	225	java/lang/Exception
      //   175	181	225	java/lang/Exception
      //   194	201	225	java/lang/Exception
    }
    
    public void init()
    {
      super.init();
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType[this.mTargetType.ordinal()];
      if ((i != 1) && (i != 2))
      {
        if (i == 5) {
          if (!getRoot().getCapability(4))
          {
            this.mCtor = null;
          }
          else if (this.mCtor == null)
          {
            Class localClass = this.mTargetClass;
            if (localClass != null)
            {
              try
              {
                this.mCtor = localClass.getConstructor(this.mParamTypes);
              }
              catch (NoSuchMethodException localNoSuchMethodException)
              {
                StringBuilder localStringBuilder2 = new StringBuilder();
                localStringBuilder2.append(this.mLogStr);
                localStringBuilder2.append("init, fail to find method. ");
                localStringBuilder2.append(localNoSuchMethodException.toString());
                Log.e("ActionCommand", localStringBuilder2.toString());
              }
            }
            else
            {
              StringBuilder localStringBuilder1 = new StringBuilder();
              localStringBuilder1.append(this.mLogStr);
              localStringBuilder1.append("init, class is null.");
              Log.e("ActionCommand", localStringBuilder1.toString());
            }
          }
        }
      }
      else if (this.mMethod == null) {
        loadMethod();
      }
    }
    
    protected void loadMethod()
    {
      if (this.mTargetClass == null)
      {
        localObject = getTarget();
        if (localObject != null) {
          this.mTargetClass = localObject.getClass();
        }
      }
      Object localObject = this.mTargetClass;
      StringBuilder localStringBuilder1;
      if (localObject != null)
      {
        try
        {
          this.mMethod = ((Class)localObject).getMethod(this.mMethodName, this.mParamTypes);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(this.mLogStr);
          localStringBuilder2.append("loadMethod(). ");
          localStringBuilder2.append(localNoSuchMethodException.toString());
          Log.e("ActionCommand", localStringBuilder2.toString());
        }
        localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append(this.mLogStr);
        localStringBuilder1.append("loadMethod(), successful.  ");
        localStringBuilder1.append(this.mMethod.toString());
        Log.d("ActionCommand", localStringBuilder1.toString());
      }
      else
      {
        localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append(this.mLogStr);
        localStringBuilder1.append("loadMethod(), class is null.");
        Log.e("ActionCommand", localStringBuilder1.toString());
      }
    }
  }
  
  private static class ModeToggleHelper
  {
    private int mCurModeIndex;
    private int mCurToggleIndex;
    private ArrayList<Integer> mModeIds = new ArrayList();
    private ArrayList<String> mModeNames = new ArrayList();
    private boolean mToggle;
    private boolean mToggleAll;
    private ArrayList<Integer> mToggleModes = new ArrayList();
    
    private int findMode(String paramString)
    {
      for (int i = 0; i < this.mModeNames.size(); i++) {
        if (((String)this.mModeNames.get(i)).equals(paramString)) {
          return i;
        }
      }
      return -1;
    }
    
    public void addMode(String paramString, int paramInt)
    {
      this.mModeNames.add(paramString);
      this.mModeIds.add(Integer.valueOf(paramInt));
    }
    
    public boolean build(String paramString)
    {
      int i = findMode(paramString);
      if (i >= 0)
      {
        this.mCurModeIndex = i;
        return true;
      }
      if ("toggle".equals(paramString))
      {
        this.mToggleAll = true;
        return true;
      }
      paramString = paramString.split(",");
      for (i = 0; i < paramString.length; i++)
      {
        int j = findMode(paramString[i]);
        if (j < 0) {
          return false;
        }
        this.mToggleModes.add(Integer.valueOf(j));
      }
      this.mToggle = true;
      return true;
    }
    
    public void click()
    {
      int i;
      if (this.mToggle)
      {
        i = this.mCurToggleIndex + 1;
        this.mCurToggleIndex = i;
        i %= this.mToggleModes.size();
        this.mCurToggleIndex = i;
        this.mCurModeIndex = ((Integer)this.mToggleModes.get(i)).intValue();
      }
      else if (this.mToggleAll)
      {
        i = this.mCurModeIndex + 1;
        this.mCurModeIndex = i;
        this.mCurModeIndex = (i % this.mModeNames.size());
      }
    }
    
    public int getModeId()
    {
      return ((Integer)this.mModeIds.get(this.mCurModeIndex)).intValue();
    }
    
    public String getModeName()
    {
      return (String)this.mModeNames.get(this.mCurModeIndex);
    }
  }
  
  private static class MultiCommand
    extends ActionCommand
  {
    public static final String TAG_NAME = "MultiCommand";
    public static final String TAG_NAME1 = "GroupCommand";
    protected ArrayList<ActionCommand> mCommands = new ArrayList();
    
    public MultiCommand(final ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      Utils.traverseXmlElementChildren(paramElement, null, new Utils.XmlTraverseListener()
      {
        public void onChild(Element paramAnonymousElement)
        {
          paramAnonymousElement = ActionCommand.create(paramAnonymousElement, paramScreenElement);
          if (paramAnonymousElement != null) {
            ActionCommand.MultiCommand.this.mCommands.add(paramAnonymousElement);
          }
        }
      });
    }
    
    protected void doPerform()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).perform();
      }
    }
    
    public void finish()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).finish();
      }
    }
    
    public void init()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).init();
      }
    }
    
    public void pause()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).pause();
      }
    }
    
    public void resume()
    {
      Iterator localIterator = this.mCommands.iterator();
      while (localIterator.hasNext()) {
        ((ActionCommand)localIterator.next()).resume();
      }
    }
  }
  
  private static abstract class NotificationReceiver
    extends ActionCommand.StatefulActionCommand
    implements NotifierManager.OnNotifyListener
  {
    private NotifierManager mNotifierManager;
    private String mType;
    
    public NotificationReceiver(ScreenElement paramScreenElement, String paramString1, String paramString2)
    {
      super(paramString1);
      this.mType = paramString2;
      this.mNotifierManager = NotifierManager.getInstance(getContext());
    }
    
    protected void asyncUpdate()
    {
      ActionCommand.mHandler.post(new Runnable()
      {
        public void run()
        {
          ActionCommand.NotificationReceiver.this.update();
        }
      });
    }
    
    public void finish()
    {
      this.mNotifierManager.releaseNotifier(this.mType, this);
    }
    
    public void init()
    {
      update();
      this.mNotifierManager.acquireNotifier(this.mType, this);
    }
    
    public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
    {
      asyncUpdate();
    }
    
    public void pause()
    {
      this.mNotifierManager.pause(this.mType, this);
    }
    
    public void resume()
    {
      update();
      this.mNotifierManager.resume(this.mType, this);
    }
    
    protected abstract void update();
  }
  
  private static class ObjVar
  {
    private int mIndex;
    private Expression mIndexArr;
    private Variables mVars;
    
    /* Error */
    public ObjVar(String paramString, Variables paramVariables)
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 20	java/lang/Object:<init>	()V
      //   4: aload_0
      //   5: aload_2
      //   6: putfield 22	com/miui/maml/ActionCommand$ObjVar:mVars	Lcom/miui/maml/data/Variables;
      //   9: aload_1
      //   10: bipush 91
      //   12: invokevirtual 28	java/lang/String:indexOf	(I)I
      //   15: istore_3
      //   16: aload_1
      //   17: astore 4
      //   19: iload_3
      //   20: ifle +32 -> 52
      //   23: aload_1
      //   24: iconst_0
      //   25: iload_3
      //   26: invokevirtual 32	java/lang/String:substring	(II)Ljava/lang/String;
      //   29: astore 4
      //   31: aload_0
      //   32: aload_2
      //   33: aload_1
      //   34: iload_3
      //   35: iconst_1
      //   36: iadd
      //   37: aload_1
      //   38: invokevirtual 36	java/lang/String:length	()I
      //   41: iconst_1
      //   42: isub
      //   43: invokevirtual 32	java/lang/String:substring	(II)Ljava/lang/String;
      //   46: invokestatic 42	com/miui/maml/data/Expression:build	(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
      //   49: putfield 44	com/miui/maml/ActionCommand$ObjVar:mIndexArr	Lcom/miui/maml/data/Expression;
      //   52: aload_0
      //   53: aload_2
      //   54: aload 4
      //   56: invokevirtual 50	com/miui/maml/data/Variables:registerVariable	(Ljava/lang/String;)I
      //   59: putfield 52	com/miui/maml/ActionCommand$ObjVar:mIndex	I
      //   62: return
      //   63: astore 4
      //   65: aload_1
      //   66: astore 4
      //   68: goto -16 -> 52
      //   71: astore_1
      //   72: goto -20 -> 52
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	75	0	this	ObjVar
      //   0	75	1	paramString	String
      //   0	75	2	paramVariables	Variables
      //   15	22	3	i	int
      //   17	38	4	str1	String
      //   63	1	4	localIndexOutOfBoundsException	IndexOutOfBoundsException
      //   66	1	4	str2	String
      // Exception table:
      //   from	to	target	type
      //   23	31	63	java/lang/IndexOutOfBoundsException
      //   31	52	71	java/lang/IndexOutOfBoundsException
    }
    
    public Object get()
    {
      Object localObject1 = this.mVars.get(this.mIndex);
      Object localObject2 = localObject1;
      Object localObject3;
      if (localObject1 != null)
      {
        Expression localExpression = this.mIndexArr;
        localObject2 = localObject1;
        if (localExpression != null)
        {
          localObject2 = localObject1;
          if ((localObject1 instanceof Object[])) {
            try
            {
              localObject2 = ((Object[])localObject1)[((int)localExpression.evaluate())];
              return localObject2;
            }
            catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
            {
              localObject3 = null;
            }
          }
        }
      }
      return localObject3;
    }
  }
  
  private static class OnOffCommandHelper
  {
    protected boolean mIsOn;
    protected boolean mIsToggle;
    
    public OnOffCommandHelper(String paramString)
    {
      if (paramString.equalsIgnoreCase("toggle")) {
        this.mIsToggle = true;
      } else if (paramString.equalsIgnoreCase("on")) {
        this.mIsOn = true;
      } else if (paramString.equalsIgnoreCase("off")) {
        this.mIsOn = false;
      }
    }
  }
  
  private static class PbrCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "PbrCommand";
    private CommandType mCommand;
    private String mCustElementName;
    private boolean mIsParamsValid;
    private Expression[] mParams;
    private boolean mUniformAutoRefresh;
    private String mUniformName;
    
    public PbrCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      paramScreenElement = paramElement.getAttribute("params");
      Object localObject = Expression.buildMultiple(getVariables(), paramScreenElement);
      this.mParams = ((Expression[])localObject);
      boolean bool = isExpressionsValid((Expression[])localObject);
      this.mIsParamsValid = bool;
      if (!bool)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Wrong params: ");
        ((StringBuilder)localObject).append(paramScreenElement);
        Log.e("PbrCommand", ((StringBuilder)localObject).toString());
      }
      this.mUniformName = paramElement.getAttribute("uniformName");
      this.mCustElementName = paramElement.getAttribute("custElementName");
      this.mUniformAutoRefresh = Boolean.parseBoolean(paramElement.getAttribute("uniformRefresh"));
      parseCommand(paramElement);
    }
    
    private void parseCommand(Element paramElement)
    {
      paramElement = paramElement.getAttribute("command");
      paramElement.hashCode();
      if (paramElement.equals("updateUniform")) {
        this.mCommand = CommandType.UPDATE_UNIFORM;
      }
    }
    
    protected void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof PhysicallyBasedRenderingElement)))
      {
        localObject = (PhysicallyBasedRenderingElement)localObject;
        if (ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType[this.mCommand.ordinal()] == 1) {
          ((PhysicallyBasedRenderingElement)localObject).updateUniform(this.mCustElementName, this.mUniformName, this.mUniformAutoRefresh, this.mParams);
        }
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("UPDATE_UNIFORM", 1);
        UPDATE_UNIFORM = localCommandType2;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2 };
      }
      
      private CommandType() {}
    }
  }
  
  @Deprecated
  public static abstract class PropertyCommand
    extends ActionCommand
  {
    protected ScreenElement mTargetElement;
    private Variable mTargetObj;
    
    protected PropertyCommand(ScreenElement paramScreenElement, Variable paramVariable, String paramString)
    {
      super();
      this.mTargetObj = paramVariable;
    }
    
    public static PropertyCommand create(ScreenElement paramScreenElement, String paramString1, String paramString2)
    {
      paramString1 = new Variable(paramString1);
      if ("visibility".equals(paramString1.getPropertyName())) {
        return new ActionCommand.VisibilityProperty(paramScreenElement, paramString1, paramString2);
      }
      if ("animation".equals(paramString1.getPropertyName())) {
        return new ActionCommand.AnimationProperty(paramScreenElement, paramString1, paramString2);
      }
      return null;
    }
    
    public void init()
    {
      super.init();
      if (this.mTargetObj == null) {
        return;
      }
      if (this.mTargetElement == null)
      {
        Object localObject = getRoot().findElement(this.mTargetObj.getObjName());
        this.mTargetElement = ((ScreenElement)localObject);
        if (localObject == null)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("could not find PropertyCommand target, name: ");
          ((StringBuilder)localObject).append(this.mTargetObj.getObjName());
          Log.w("ActionCommand", ((StringBuilder)localObject).toString());
          this.mTargetObj = null;
        }
      }
    }
    
    public void perform()
    {
      if (this.mTargetElement == null) {
        return;
      }
      doPerform();
    }
  }
  
  private static class RingModeCommand
    extends ActionCommand.NotificationReceiver
  {
    private AudioManager mAudioManager;
    private ActionCommand.ModeToggleHelper mToggleHelper;
    
    public RingModeCommand(ScreenElement paramScreenElement, String paramString)
    {
      super("ring_mode", "android.media.RINGER_MODE_CHANGED");
      paramScreenElement = new ActionCommand.ModeToggleHelper(null);
      this.mToggleHelper = paramScreenElement;
      paramScreenElement.addMode("normal", 2);
      this.mToggleHelper.addMode("silent", 0);
      this.mToggleHelper.addMode("vibrate", 1);
      if (!this.mToggleHelper.build(paramString))
      {
        paramScreenElement = new StringBuilder();
        paramScreenElement.append("invalid ring mode command value: ");
        paramScreenElement.append(paramString);
        Log.e("ActionCommand", paramScreenElement.toString());
      }
    }
    
    protected void doPerform()
    {
      if (this.mAudioManager == null) {
        return;
      }
      this.mToggleHelper.click();
      int i = this.mToggleHelper.getModeId();
      this.mAudioManager.setRingerMode(i);
      updateState(i);
    }
    
    protected void update()
    {
      if (this.mAudioManager == null) {
        this.mAudioManager = ((AudioManager)this.mScreenElement.getContext().mContext.getSystemService("audio"));
      }
      AudioManager localAudioManager = this.mAudioManager;
      if (localAudioManager == null) {
        return;
      }
      updateState(localAudioManager.getRingerMode());
    }
  }
  
  private static class SensorBinderCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "SensorCommand";
    private CommandType mCommand;
    
    public SensorBinderCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mTargetType = ActionCommand.TargetCommand.TargetType.VARIABLE_BINDER;
      paramScreenElement = paramElement.getAttribute("command");
      paramScreenElement.hashCode();
      if (!paramScreenElement.equals("turnOff"))
      {
        if (!paramScreenElement.equals("turnOn")) {
          this.mCommand = CommandType.INVALID;
        } else {
          this.mCommand = CommandType.TURN_ON;
        }
      }
      else {
        this.mCommand = CommandType.TURN_OFF;
      }
    }
    
    protected void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof SensorBinder)))
      {
        localObject = (SensorBinder)localObject;
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$SensorBinderCommand$CommandType[this.mCommand.ordinal()];
        if (i != 1)
        {
          if (i == 2) {
            ((SensorBinder)localObject).turnOffSensorBinder();
          }
        }
        else {
          ((SensorBinder)localObject).turnOnSensorBinder();
        }
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("TURN_ON", 1);
        TURN_ON = localCommandType2;
        CommandType localCommandType3 = new CommandType("TURN_OFF", 2);
        TURN_OFF = localCommandType3;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3 };
      }
      
      private CommandType() {}
    }
  }
  
  private static class SoundCommand
    extends ActionCommand
  {
    public static final String TAG_NAME = "SoundCommand";
    private SoundManager.Command mCommand;
    private boolean mKeepCur;
    private boolean mLoop;
    private String mSound;
    private Expression mStreamIdExp;
    private IndexedVariable mStreamIdVar;
    private Expression mVolumeExp;
    
    public SoundCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      this.mSound = paramElement.getAttribute("sound");
      this.mKeepCur = Boolean.parseBoolean(paramElement.getAttribute("keepCur"));
      this.mLoop = Boolean.parseBoolean(paramElement.getAttribute("loop"));
      this.mCommand = SoundManager.Command.parse(paramElement.getAttribute("command"));
      paramScreenElement = Expression.build(getVariables(), paramElement.getAttribute("volume"));
      this.mVolumeExp = paramScreenElement;
      if (paramScreenElement == null) {
        Log.e("ActionCommand", "invalid expression in SoundCommand");
      }
      this.mStreamIdExp = Expression.build(getVariables(), paramElement.getAttribute("streamId"));
      paramScreenElement = paramElement.getAttribute("streamIdVar");
      if (!TextUtils.isEmpty(paramScreenElement)) {
        this.mStreamIdVar = new IndexedVariable(paramScreenElement, getVariables(), true);
      }
    }
    
    protected void doPerform()
    {
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$SoundManager$Command[this.mCommand.ordinal()];
      Object localObject;
      if (i != 1)
      {
        if ((i == 2) || (i == 3) || (i == 4))
        {
          localObject = this.mStreamIdExp;
          if (localObject != null)
          {
            i = (int)((Expression)localObject).evaluate();
            getRoot().playSound(i, this.mCommand);
          }
        }
      }
      else
      {
        float f = 0.0F;
        localObject = this.mVolumeExp;
        if (localObject != null) {
          f = (float)((Expression)localObject).evaluate();
        }
        i = getRoot().playSound(this.mSound, new SoundManager.SoundOptions(this.mKeepCur, this.mLoop, f));
        localObject = this.mStreamIdVar;
        if (localObject != null) {
          ((IndexedVariable)localObject).set(i);
        }
      }
    }
  }
  
  public static abstract class StateTracker
  {
    private Boolean mActualState = null;
    private boolean mDeferredStateChangeRequestNeeded = false;
    private boolean mInTransition = false;
    private Boolean mIntendedState = null;
    
    public abstract int getActualState(Context paramContext);
    
    public final int getTriState(Context paramContext)
    {
      if (this.mInTransition) {
        return 5;
      }
      int i = getActualState(paramContext);
      if (i != 0)
      {
        if (i != 1) {
          return 5;
        }
        return 1;
      }
      return 0;
    }
    
    public final boolean isTurningOn()
    {
      Boolean localBoolean = this.mIntendedState;
      boolean bool;
      if ((localBoolean != null) && (localBoolean.booleanValue())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public abstract void onActualStateChange(Context paramContext, Intent paramIntent);
    
    protected abstract void requestStateChange(Context paramContext, boolean paramBoolean);
    
    protected final void setCurrentState(Context paramContext, int paramInt)
    {
      boolean bool = this.mInTransition;
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt == 3)
            {
              this.mInTransition = true;
              this.mActualState = Boolean.TRUE;
            }
          }
          else
          {
            this.mInTransition = true;
            this.mActualState = Boolean.FALSE;
          }
        }
        else
        {
          this.mInTransition = false;
          this.mActualState = Boolean.TRUE;
        }
      }
      else
      {
        this.mInTransition = false;
        this.mActualState = Boolean.FALSE;
      }
      if ((bool) && (!this.mInTransition) && (this.mDeferredStateChangeRequestNeeded))
      {
        Log.v("ActionCommand", "processing deferred state change");
        Boolean localBoolean1 = this.mActualState;
        if (localBoolean1 != null)
        {
          Boolean localBoolean2 = this.mIntendedState;
          if ((localBoolean2 != null) && (localBoolean2.equals(localBoolean1)))
          {
            Log.v("ActionCommand", "... but intended state matches, so no changes.");
            break label179;
          }
        }
        localBoolean1 = this.mIntendedState;
        if (localBoolean1 != null)
        {
          this.mInTransition = true;
          requestStateChange(paramContext, localBoolean1.booleanValue());
        }
        label179:
        this.mDeferredStateChangeRequestNeeded = false;
      }
    }
    
    public final void toggleState(Context paramContext)
    {
      int i = getTriState(paramContext);
      boolean bool1 = false;
      boolean bool2;
      if (i != 0)
      {
        bool2 = bool1;
        if (i != 1) {
          if (i != 5)
          {
            bool2 = bool1;
          }
          else
          {
            Boolean localBoolean = this.mIntendedState;
            bool2 = bool1;
            if (localBoolean != null) {
              bool2 = localBoolean.booleanValue() ^ true;
            }
          }
        }
      }
      else
      {
        bool2 = true;
      }
      this.mIntendedState = Boolean.valueOf(bool2);
      if (this.mInTransition)
      {
        this.mDeferredStateChangeRequestNeeded = true;
      }
      else
      {
        this.mInTransition = true;
        requestStateChange(paramContext, bool2);
      }
    }
  }
  
  private static abstract class StatefulActionCommand
    extends ActionCommand
  {
    private IndexedVariable mVar = new IndexedVariable(paramString, getVariables(), true);
    
    public StatefulActionCommand(ScreenElement paramScreenElement, String paramString)
    {
      super();
    }
    
    protected final void updateState(int paramInt)
    {
      IndexedVariable localIndexedVariable = this.mVar;
      if (localIndexedVariable == null) {
        return;
      }
      localIndexedVariable.set(paramInt);
      getRoot().requestUpdate();
    }
  }
  
  private static abstract class TargetCommand
    extends ActionCommand
  {
    protected String mLogStr;
    private Object mTarget;
    protected Expression mTargetIndex;
    protected String mTargetName;
    protected Expression mTargetNameExp;
    protected TargetType mTargetType;
    
    public TargetCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      paramScreenElement = Expression.build(getVariables(), paramElement.getAttribute("targetExp"));
      this.mTargetNameExp = paramScreenElement;
      if (paramScreenElement != null) {
        this.mTargetName = paramScreenElement.evaluateStr();
      } else {
        this.mTargetName = paramElement.getAttribute("target");
      }
      if (TextUtils.isEmpty(this.mTargetName)) {
        this.mTargetName = null;
      }
      this.mTargetIndex = Expression.build(getVariables(), paramElement.getAttribute("targetIndex"));
      paramScreenElement = paramElement.getAttribute("targetType");
      paramElement = TargetType.SCREEN_ELEMENT;
      this.mTargetType = paramElement;
      if ("element".equals(paramScreenElement)) {
        this.mTargetType = paramElement;
      } else if ("var".equals(paramScreenElement)) {
        this.mTargetType = TargetType.VARIABLE;
      } else if ("ctor".equals(paramScreenElement)) {
        this.mTargetType = TargetType.CONSTRUCTOR;
      }
      paramScreenElement = new StringBuilder();
      paramScreenElement.append("target=");
      paramScreenElement.append(this.mTargetName);
      paramScreenElement.append(" type=");
      paramScreenElement.append(this.mTargetType.toString());
      this.mLogStr = paramScreenElement.toString();
    }
    
    private void findTarget()
    {
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType[this.mTargetType.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i == 4) {
              this.mTarget = getRoot().findBinder(this.mTargetName);
            }
          }
          else {
            this.mTarget = getRoot().getAnimationItems(this.mTargetName);
          }
        }
        else if (this.mTargetName != null) {
          this.mTarget = Integer.valueOf(getVariables().registerVariable(this.mTargetName));
        } else {
          Log.e("ActionCommand", "MethodCommand, type=var, empty target name");
        }
      }
      else
      {
        Object localObject = getRoot().findElement(this.mTargetName);
        this.mTarget = localObject;
        if (localObject == null)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("could not find ScreenElement target, name: ");
          ((StringBuilder)localObject).append(this.mTargetName);
          Log.e("ActionCommand", ((StringBuilder)localObject).toString());
        }
        else if ((this.mTargetIndex != null) && (!ElementGroup.isArrayGroup((ScreenElement)localObject)))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("target with index is not an ArrayGroup, name: ");
          ((StringBuilder)localObject).append(this.mTargetName);
          Log.e("ActionCommand", ((StringBuilder)localObject).toString());
          this.mTargetIndex = null;
        }
      }
    }
    
    protected Object getTarget()
    {
      Object localObject1 = this.mTargetNameExp;
      if (localObject1 != null)
      {
        localObject1 = ((Expression)localObject1).evaluateStr();
        if (localObject1 == null)
        {
          this.mTargetName = null;
          this.mTarget = null;
          return null;
        }
        if (!((String)localObject1).equals(this.mTargetName))
        {
          this.mTargetName = ((String)localObject1);
          findTarget();
        }
      }
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TargetCommand$TargetType[this.mTargetType.ordinal()];
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i != 4) {
              return null;
            }
            return this.mTarget;
          }
          return this.mTarget;
        }
        if (this.mTarget != null)
        {
          localObject1 = getVariables().get(((Integer)this.mTarget).intValue());
          if (this.mTargetIndex != null)
          {
            if (localObject1.getClass().isArray()) {
              return Array.get(localObject1, (int)this.mTargetIndex.evaluate());
            }
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("target with index is not an Array variable, name: ");
            ((StringBuilder)localObject1).append(this.mTargetName);
            Log.e("ActionCommand", ((StringBuilder)localObject1).toString());
            this.mTargetIndex = null;
          }
          else
          {
            return localObject1;
          }
        }
        return null;
      }
      Object localObject2 = this.mTarget;
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        Expression localExpression = this.mTargetIndex;
        localObject1 = localObject2;
        if (localExpression != null) {
          localObject1 = ((ElementGroup)localObject2).getChild((int)localExpression.evaluate());
        }
      }
      return localObject1;
    }
    
    public void init()
    {
      super.init();
      findTarget();
    }
    
    protected static enum TargetType
    {
      static
      {
        TargetType localTargetType1 = new TargetType("SCREEN_ELEMENT", 0);
        SCREEN_ELEMENT = localTargetType1;
        TargetType localTargetType2 = new TargetType("VARIABLE", 1);
        VARIABLE = localTargetType2;
        TargetType localTargetType3 = new TargetType("CONSTRUCTOR", 2);
        CONSTRUCTOR = localTargetType3;
        TargetType localTargetType4 = new TargetType("ANIMATION_ITEM", 3);
        ANIMATION_ITEM = localTargetType4;
        TargetType localTargetType5 = new TargetType("VARIABLE_BINDER", 4);
        VARIABLE_BINDER = localTargetType5;
        $VALUES = new TargetType[] { localTargetType1, localTargetType2, localTargetType3, localTargetType4, localTargetType5 };
      }
      
      private TargetType() {}
    }
  }
  
  private static class TickListenerCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "TickListenerCommand";
    private CommandType mCommand;
    private Expression mFunNameExp;
    
    public TickListenerCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      this.mFunNameExp = Expression.build(getVariables(), paramElement.getAttribute("function"));
      paramScreenElement = paramElement.getAttribute("command");
      paramScreenElement.hashCode();
      if (!paramScreenElement.equals("set"))
      {
        if (paramScreenElement.equals("unset")) {
          this.mCommand = CommandType.UNSET;
        }
      }
      else {
        this.mCommand = CommandType.SET;
      }
    }
    
    protected void doPerform()
    {
      Object localObject1 = getTarget();
      if ((localObject1 != null) && ((localObject1 instanceof AnimatedScreenElement)))
      {
        localObject1 = (AnimatedScreenElement)localObject1;
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType[this.mCommand.ordinal()];
        if (i != 1)
        {
          if (i == 2) {
            ((AnimatedScreenElement)localObject1).unsetOnTickListener();
          }
        }
        else
        {
          Object localObject2 = this.mFunNameExp.evaluateStr();
          localObject2 = getRoot().findElement((String)localObject2);
          if ((localObject2 != null) && ((localObject2 instanceof FunctionElement))) {
            ((AnimatedScreenElement)localObject1).setOnTickListener((FunctionElement)localObject2);
          }
        }
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("INVALID", 0);
        INVALID = localCommandType1;
        CommandType localCommandType2 = new CommandType("SET", 1);
        SET = localCommandType2;
        CommandType localCommandType3 = new CommandType("UNSET", 2);
        UNSET = localCommandType3;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3 };
      }
      
      private CommandType() {}
    }
  }
  
  private static class UsbStorageSwitchCommand
    extends ActionCommand.NotificationReceiver
  {
    private boolean mConnected;
    private ActionCommand.OnOffCommandHelper mOnOffHelper;
    private StorageManager mStorageManager;
    
    public UsbStorageSwitchCommand(ScreenElement paramScreenElement, String paramString)
    {
      super("usb_mode", "android.hardware.usb.action.USB_STATE");
      this.mOnOffHelper = new ActionCommand.OnOffCommandHelper(paramString);
    }
    
    protected void doPerform()
    {
      Object localObject = this.mStorageManager;
      if (localObject == null) {
        return;
      }
      boolean bool1 = HideSdkDependencyUtils.StorageManager_isUsbMassStorageEnabled((StorageManager)localObject);
      localObject = this.mOnOffHelper;
      final boolean bool2;
      if (((ActionCommand.OnOffCommandHelper)localObject).mIsToggle)
      {
        bool2 = bool1 ^ true;
      }
      else
      {
        bool2 = ((ActionCommand.OnOffCommandHelper)localObject).mIsOn;
        if (bool2 == bool1) {
          return;
        }
      }
      updateState(3);
      new Thread("StorageSwitchThread")
      {
        public void run()
        {
          if (bool2) {
            HideSdkDependencyUtils.StorageManager_enableUsbMassStorage(ActionCommand.UsbStorageSwitchCommand.this.mStorageManager);
          } else {
            HideSdkDependencyUtils.StorageManager_disableUsbMassStorage(ActionCommand.UsbStorageSwitchCommand.this.mStorageManager);
          }
          ActionCommand.UsbStorageSwitchCommand localUsbStorageSwitchCommand = ActionCommand.UsbStorageSwitchCommand.this;
          int i;
          if (bool2) {
            i = 2;
          } else {
            i = 1;
          }
          localUsbStorageSwitchCommand.updateState(i);
        }
      }.start();
    }
    
    public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
    {
      if (paramIntent != null) {
        this.mConnected = paramIntent.getExtras().getBoolean("connected");
      }
      super.onNotify(paramContext, paramIntent, paramObject);
    }
    
    protected void update()
    {
      if (this.mStorageManager == null)
      {
        StorageManager localStorageManager = (StorageManager)getContext().getSystemService("storage");
        this.mStorageManager = localStorageManager;
        if (localStorageManager == null)
        {
          Log.w("ActionCommand", "Failed to get StorageManager");
          return;
        }
      }
      boolean bool = HideSdkDependencyUtils.StorageManager_isUsbMassStorageEnabled(this.mStorageManager);
      int i;
      if (this.mConnected)
      {
        if (bool) {
          i = 2;
        } else {
          i = 1;
        }
      }
      else {
        i = 0;
      }
      updateState(i);
    }
  }
  
  private static class VariableAssignmentCommand
    extends ActionCommand
  {
    public static final String TAG_NAME = "VariableCommand";
    private Expression[] mArrayValues;
    private Expression mExpression;
    private Expression mIndexExpression;
    private IndexedVariable mLengthVar;
    private String mName;
    private Expression mNameExp;
    private boolean mPersist;
    private boolean mRequestUpdate;
    private VariableType mType;
    private IndexedVariable mVar;
    
    public VariableAssignmentCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      paramScreenElement = paramScreenElement.getVariables();
      Object localObject = Expression.build(paramScreenElement, paramElement.getAttribute("nameExp"));
      this.mNameExp = ((Expression)localObject);
      if (localObject != null) {
        this.mName = ((Expression)localObject).evaluateStr();
      } else {
        this.mName = paramElement.getAttribute("name");
      }
      this.mPersist = Boolean.parseBoolean(paramElement.getAttribute("persist"));
      this.mRequestUpdate = Boolean.parseBoolean(paramElement.getAttribute("requestUpdate"));
      this.mType = VariableType.parseType(paramElement.getAttribute("type"));
      if (!TextUtils.isEmpty(this.mName))
      {
        this.mVar = new IndexedVariable(this.mName, paramScreenElement, this.mType.isNumber());
        if (this.mType.isArray())
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(this.mName);
          ((StringBuilder)localObject).append(".length");
          this.mLengthVar = new IndexedVariable(((StringBuilder)localObject).toString(), paramScreenElement, true);
        }
      }
      else
      {
        Log.e("ActionCommand", "empty name in VariableAssignmentCommand");
      }
      this.mExpression = Expression.build(paramScreenElement, paramElement.getAttribute("expression"));
      if (this.mType.isArray())
      {
        this.mIndexExpression = Expression.build(paramScreenElement, paramElement.getAttribute("index"));
        this.mArrayValues = Expression.buildMultiple(paramScreenElement, paramElement.getAttribute("values"));
      }
    }
    
    protected void doPerform()
    {
      ScreenElementRoot localScreenElementRoot = getRoot();
      Variables localVariables1 = getVariables();
      Object localObject1 = this.mNameExp;
      String[] arrayOfString = null;
      if (localObject1 != null)
      {
        localObject1 = ((Expression)localObject1).evaluateStr();
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          this.mName = null;
          return;
        }
        if (!((String)localObject1).equals(this.mName))
        {
          this.mName = ((String)localObject1);
          this.mVar = new IndexedVariable((String)localObject1, localVariables1, this.mType.isNumber());
          if (this.mType.isArray())
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append(this.mName);
            ((StringBuilder)localObject1).append(".length");
            this.mLengthVar = new IndexedVariable(((StringBuilder)localObject1).toString(), localVariables1, true);
          }
        }
      }
      if (this.mVar == null) {
        return;
      }
      int i = ActionCommand.1.$SwitchMap$com$miui$maml$data$VariableType[this.mType.ordinal()];
      double d;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i != 4)
            {
              boolean bool = this.mType.isNumberOrStringArray();
              i = 0;
              int j = 0;
              int k = 0;
              if (bool)
              {
                if ((this.mIndexExpression != null) && (this.mExpression != null))
                {
                  if (this.mType.isNumberArray())
                  {
                    this.mVar.setArr((int)this.mIndexExpression.evaluate(), this.mExpression.evaluate());
                    break label871;
                  }
                  this.mVar.setArr((int)this.mIndexExpression.evaluate(), this.mExpression.evaluateStr());
                  break label871;
                }
                if (this.mArrayValues != null)
                {
                  localObject2 = this.mVar.get();
                  j = this.mArrayValues.length;
                  if ((localObject2 != null) && (Array.getLength(localObject2) == j))
                  {
                    localObject1 = localObject2;
                    if (localObject2.getClass().getComponentType() == this.mType.mTypeClass) {}
                  }
                  else
                  {
                    localVariables1.createArray(this.mName, j, this.mType.mTypeClass);
                    this.mLengthVar.set(j);
                    localObject1 = this.mVar.get();
                  }
                  if (this.mType.isNumberArray()) {
                    for (i = k; i < j; i++)
                    {
                      localObject2 = this.mArrayValues[i];
                      if (localObject2 == null) {
                        d = 0.0D;
                      } else {
                        d = ((Expression)localObject2).evaluate();
                      }
                      Variables.putValueToArr(localObject1, i, d);
                    }
                  }
                  while (i < j)
                  {
                    localObject2 = this.mArrayValues[i];
                    arrayOfString = (String[])localObject1;
                    if (localObject2 == null) {
                      localObject2 = null;
                    } else {
                      localObject2 = ((Expression)localObject2).evaluateStr();
                    }
                    arrayOfString[i] = localObject2;
                    i++;
                  }
                  this.mVar.set(localObject1);
                  break label871;
                }
              }
              localObject1 = this.mExpression;
              if (localObject1 != null) {
                localObject2 = ((Expression)localObject1).evaluateStr();
              } else {
                localObject2 = null;
              }
              Variables localVariables2 = getVariables();
              localObject1 = arrayOfString;
              if (!TextUtils.isEmpty((CharSequence)localObject2))
              {
                localObject1 = arrayOfString;
                if (localVariables2.existsObj((String)localObject2)) {
                  localObject1 = localVariables2.get((String)localObject2);
                }
              }
              Object localObject2 = this.mIndexExpression;
              if (localObject2 == null)
              {
                localObject2 = this.mVar.get();
                this.mVar.set(localObject1);
                if ((localObject2 == null) || (!(localObject2 instanceof Array)))
                {
                  i = j;
                  if (localObject1 != null)
                  {
                    i = j;
                    if (!(localObject1 instanceof Array)) {}
                  }
                }
                else
                {
                  i = 1;
                }
                if ((this.mLengthVar == null) && (i != 0))
                {
                  localObject2 = new StringBuilder();
                  ((StringBuilder)localObject2).append(this.mName);
                  ((StringBuilder)localObject2).append(".length");
                  this.mLengthVar = new IndexedVariable(((StringBuilder)localObject2).toString(), localVariables1, true);
                }
                if ((localObject1 != null) && ((localObject1 instanceof Array)))
                {
                  this.mLengthVar.set(Array.getLength(localObject1));
                }
                else
                {
                  localObject1 = this.mLengthVar;
                  if (localObject1 != null) {
                    ((IndexedVariable)localObject1).set(0.0D);
                  }
                }
              }
              else
              {
                this.mVar.setArr((int)((Expression)localObject2).evaluate(), localObject1);
              }
            }
            else
            {
              localObject1 = this.mExpression.evaluateJsonArray();
              this.mVar.set(localObject1);
            }
          }
          else
          {
            localObject1 = this.mExpression.evaluateJsonObject();
            this.mVar.set(localObject1);
          }
        }
        else
        {
          localObject1 = this.mExpression.evaluateStr();
          this.mVar.set(localObject1);
          if ((this.mPersist) && (localScreenElementRoot.getCapability(2))) {
            localScreenElementRoot.saveVar(this.mName, (String)localObject1);
          }
        }
      }
      else
      {
        localObject1 = this.mExpression;
        if (localObject1 != null)
        {
          d = ((Expression)localObject1).evaluate();
          this.mVar.set(d);
          if ((this.mPersist) && (localScreenElementRoot.getCapability(2))) {
            localScreenElementRoot.saveVar(this.mName, Double.valueOf(d));
          }
        }
      }
      label871:
      if (this.mRequestUpdate) {
        localScreenElementRoot.requestUpdate();
      }
    }
  }
  
  private static class VariableBinderCommand
    extends ActionCommand
  {
    public static final String TAG_NAME = "BinderCommand";
    private VariableBinder mBinder;
    private Command mCommand = Command.Invalid;
    private String mName;
    
    public VariableBinderCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super();
      this.mName = paramElement.getAttribute("name");
      if (paramElement.getAttribute("command").equals("refresh")) {
        this.mCommand = Command.Refresh;
      }
    }
    
    protected void doPerform()
    {
      if ((this.mBinder != null) && (ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command[this.mCommand.ordinal()] == 1)) {
        this.mBinder.refresh();
      }
    }
    
    public void init()
    {
      this.mBinder = getRoot().findBinder(this.mName);
    }
    
    private static enum Command
    {
      static
      {
        Command localCommand1 = new Command("Refresh", 0);
        Refresh = localCommand1;
        Command localCommand2 = new Command("Invalid", 1);
        Invalid = localCommand2;
        $VALUES = new Command[] { localCommand1, localCommand2 };
      }
      
      private Command() {}
    }
  }
  
  private static class VideoCommand
    extends ActionCommand.TargetCommand
  {
    public static final String TAG_NAME = "VideoCommand";
    private CommandType mCommand;
    private Expression mLooping;
    private Expression mPath;
    private Expression mScaleMode;
    private Expression mTime;
    private Expression mVolume;
    
    public VideoCommand(ScreenElement paramScreenElement, Element paramElement)
    {
      super(paramElement);
      Variables localVariables = getVariables();
      paramScreenElement = paramElement.getAttribute("command");
      this.mPath = Expression.build(localVariables, paramElement.getAttribute("path"));
      this.mVolume = Expression.build(localVariables, paramElement.getAttribute("volume"));
      this.mScaleMode = Expression.build(localVariables, paramElement.getAttribute("scaleMode"));
      this.mLooping = Expression.build(localVariables, paramElement.getAttribute("loop"));
      this.mTime = Expression.build(localVariables, paramElement.getAttribute("time"));
      paramScreenElement.hashCode();
      int i = paramScreenElement.hashCode();
      int j = -1;
      switch (i)
      {
      default: 
        break;
      case 670514716: 
        if (paramScreenElement.equals("setVolume")) {
          j = 4;
        }
        break;
      case 106440182: 
        if (paramScreenElement.equals("pause")) {
          j = 3;
        }
        break;
      case 3443508: 
        if (paramScreenElement.equals("play")) {
          j = 2;
        }
        break;
      case -906224877: 
        if (paramScreenElement.equals("seekTo")) {
          j = 1;
        }
        break;
      case -1354792126: 
        if (paramScreenElement.equals("config")) {
          j = 0;
        }
        break;
      }
      switch (j)
      {
      default: 
        this.mCommand = CommandType.INVALID;
        break;
      case 4: 
        this.mCommand = CommandType.SET_VOLUME;
        break;
      case 3: 
        this.mCommand = CommandType.PAUSE;
        break;
      case 2: 
        this.mCommand = CommandType.PLAY;
        break;
      case 1: 
        this.mCommand = CommandType.SEEK_TO;
        break;
      case 0: 
        this.mCommand = CommandType.CONFIG;
      }
    }
    
    public void doPerform()
    {
      Object localObject = getTarget();
      if ((localObject != null) && ((localObject instanceof VideoElement)))
      {
        VideoElement localVideoElement = (VideoElement)localObject;
        int i = ActionCommand.1.$SwitchMap$com$miui$maml$ActionCommand$VideoCommand$CommandType[this.mCommand.ordinal()];
        int j = 1;
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3)
            {
              if (i != 4)
              {
                if (i == 5)
                {
                  localObject = this.mLooping;
                  boolean bool1 = false;
                  boolean bool2 = bool1;
                  if (localObject != null)
                  {
                    bool2 = bool1;
                    if (((Expression)localObject).evaluate() > 0.0D) {
                      bool2 = true;
                    }
                  }
                  localObject = this.mScaleMode;
                  if (localObject != null) {
                    j = (int)((Expression)localObject).evaluate();
                  }
                  localObject = this.mPath;
                  if (localObject != null) {
                    localObject = ((Expression)localObject).evaluateStr();
                  } else {
                    localObject = "";
                  }
                  localVideoElement.config(bool2, j, (String)localObject);
                }
              }
              else
              {
                localObject = this.mVolume;
                if (localObject != null) {
                  localVideoElement.setVolume((float)((Expression)localObject).evaluate());
                }
              }
            }
            else
            {
              localObject = this.mTime;
              if (localObject != null) {
                localVideoElement.seekTo((int)((Expression)localObject).evaluate());
              }
            }
          }
          else {
            localVideoElement.pause();
          }
        }
        else {
          localVideoElement.play();
        }
      }
    }
    
    private static enum CommandType
    {
      static
      {
        CommandType localCommandType1 = new CommandType("PAUSE", 0);
        PAUSE = localCommandType1;
        CommandType localCommandType2 = new CommandType("PLAY", 1);
        PLAY = localCommandType2;
        CommandType localCommandType3 = new CommandType("SEEK_TO", 2);
        SEEK_TO = localCommandType3;
        CommandType localCommandType4 = new CommandType("CONFIG", 3);
        CONFIG = localCommandType4;
        CommandType localCommandType5 = new CommandType("SET_VOLUME", 4);
        SET_VOLUME = localCommandType5;
        CommandType localCommandType6 = new CommandType("INVALID", 5);
        INVALID = localCommandType6;
        $VALUES = new CommandType[] { localCommandType1, localCommandType2, localCommandType3, localCommandType4, localCommandType5, localCommandType6 };
      }
      
      private CommandType() {}
    }
  }
  
  @Deprecated
  private static class VisibilityProperty
    extends ActionCommand.PropertyCommand
  {
    public static final String PROPERTY_NAME = "visibility";
    private boolean mIsShow;
    private boolean mIsToggle;
    
    protected VisibilityProperty(ScreenElement paramScreenElement, Variable paramVariable, String paramString)
    {
      super(paramVariable, paramString);
      if (paramString.equalsIgnoreCase("toggle")) {
        this.mIsToggle = true;
      } else if (paramString.equalsIgnoreCase("true")) {
        this.mIsShow = true;
      } else if (paramString.equalsIgnoreCase("false")) {
        this.mIsShow = false;
      }
    }
    
    public void doPerform()
    {
      if (this.mIsToggle)
      {
        ScreenElement localScreenElement = this.mTargetElement;
        localScreenElement.show(localScreenElement.isVisible() ^ true);
      }
      else
      {
        this.mTargetElement.show(this.mIsShow);
      }
    }
  }
  
  private static final class WifiStateTracker
    extends ActionCommand.StateTracker
  {
    private static final int MAX_SCAN_ATTEMPT = 3;
    public boolean zConnected = false;
    private int zScanAttempt = 0;
    
    private static int wifiStateToFiveState(int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3) {
              return 4;
            }
            return 1;
          }
          return 2;
        }
        return 0;
      }
      return 3;
    }
    
    public int getActualState(Context paramContext)
    {
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext != null) {
        return wifiStateToFiveState(paramContext.getWifiState());
      }
      return 4;
    }
    
    public void onActualStateChange(Context paramContext, Intent paramIntent)
    {
      boolean bool1 = "android.net.wifi.WIFI_STATE_CHANGED".equals(paramIntent.getAction());
      boolean bool2 = false;
      int i;
      if (bool1)
      {
        i = paramIntent.getIntExtra("wifi_state", -1);
        setCurrentState(paramContext, wifiStateToFiveState(i));
        if (3 == i)
        {
          this.zConnected = true;
          this.zScanAttempt = 0;
        }
      }
      else if ("android.net.wifi.SCAN_RESULTS".equals(paramIntent.getAction()))
      {
        i = this.zScanAttempt;
        if (i < 3)
        {
          i++;
          this.zScanAttempt = i;
          if (i == 3) {
            this.zConnected = false;
          }
        }
      }
      else if ("android.net.wifi.STATE_CHANGE".equals(paramIntent.getAction()))
      {
        this.zScanAttempt = 3;
        paramContext = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
        if (paramContext == null) {
          return;
        }
        paramContext = paramContext.getDetailedState();
        if ((NetworkInfo.DetailedState.SCANNING == paramContext) || (NetworkInfo.DetailedState.CONNECTING == paramContext) || (NetworkInfo.DetailedState.AUTHENTICATING == paramContext) || (NetworkInfo.DetailedState.OBTAINING_IPADDR == paramContext) || (NetworkInfo.DetailedState.CONNECTED == paramContext)) {
          bool2 = true;
        }
        this.zConnected = bool2;
      }
    }
    
    protected void requestStateChange(Context paramContext, boolean paramBoolean)
    {
      AsyncTask.SERIAL_EXECUTOR.execute(new a(paramContext, paramBoolean));
    }
  }
  
  private static class WifiSwitchCommand
    extends ActionCommand.NotificationReceiver
  {
    private final ActionCommand.OnOffCommandHelper mOnOffHelper;
    private final ActionCommand.StateTracker mWifiState = new ActionCommand.WifiStateTracker(null);
    
    public WifiSwitchCommand(ScreenElement paramScreenElement, String paramString)
    {
      super("wifi_state", NotifierManager.TYPE_WIFI_STATE);
      update();
      this.mOnOffHelper = new ActionCommand.OnOffCommandHelper(paramString);
    }
    
    protected void doPerform()
    {
      Context localContext = getContext();
      if (this.mOnOffHelper.mIsToggle)
      {
        this.mWifiState.toggleState(localContext);
      }
      else
      {
        int i = 0;
        int j = this.mWifiState.getTriState(localContext);
        if (j != 0 ? (j == 1) && (!this.mOnOffHelper.mIsOn) : this.mOnOffHelper.mIsOn) {
          i = 1;
        }
        if (i != 0) {
          this.mWifiState.requestStateChange(localContext, this.mOnOffHelper.mIsOn);
        }
      }
      update();
    }
    
    public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
    {
      this.mWifiState.onActualStateChange(paramContext, paramIntent);
      super.onNotify(paramContext, paramIntent, paramObject);
    }
    
    protected void update()
    {
      int i = this.mWifiState.getTriState(getContext());
      int j = 0;
      if (i != 0)
      {
        int k = 1;
        if (i != 1)
        {
          if (i == 5)
          {
            if (this.mWifiState.isTurningOn()) {
              j = 3;
            }
            updateState(j);
          }
        }
        else
        {
          if (((ActionCommand.WifiStateTracker)this.mWifiState).zConnected) {
            j = k;
          } else {
            j = 2;
          }
          updateState(j);
        }
      }
      else
      {
        updateState(0);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ActionCommand
 * JD-Core Version:    0.7.0.1
 */