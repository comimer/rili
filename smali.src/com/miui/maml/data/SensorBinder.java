package com.miui.maml.data;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.text.TextUtils;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class SensorBinder
  extends VariableBinder
{
  private static final String LOG_TAG = "SensorBinder";
  public static final String TAG_NAME = "SensorBinder";
  private static final float THRESHOLD = 0.1F;
  private boolean mEnable = true;
  private boolean mPaused;
  private int mRate;
  private boolean mRegistered;
  private SensorEventListener mSensorEventListener;
  private float mThreshold;
  private String mType;
  
  public SensorBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mType = paramElement.getAttribute("type");
    this.mRate = Utils.getAttrAsInt(paramElement, "rate", 3);
    this.mThreshold = Utils.getAttrAsFloat(paramElement, "threshold", 0.1F);
    paramScreenElementRoot = paramElement.getAttribute("enable");
    if (!TextUtils.isEmpty(paramScreenElementRoot)) {
      this.mEnable = Boolean.parseBoolean(paramScreenElementRoot);
    }
    this.mSensorEventListener = new SensorEventListener()
    {
      public void onAccuracyChanged(Sensor paramAnonymousSensor, int paramAnonymousInt) {}
      
      public void onSensorChanged(SensorEvent paramAnonymousSensorEvent)
      {
        int i = paramAnonymousSensorEvent.values.length;
        Iterator localIterator = SensorBinder.this.mVariables.iterator();
        for (int j = 0; localIterator.hasNext(); j = 1)
        {
          label20:
          SensorBinder.Variable localVariable = (SensorBinder.Variable)localIterator.next();
          int k = localVariable.mIndex;
          if ((k < 0) || (k >= i) || (Math.abs(localVariable.getNumber() - paramAnonymousSensorEvent.values[localVariable.mIndex]) <= SensorBinder.this.mThreshold)) {
            break label20;
          }
          localVariable.set(paramAnonymousSensorEvent.values[localVariable.mIndex]);
        }
        if (j != 0) {
          SensorBinder.this.onUpdateComplete();
        }
      }
    };
    loadVariables(paramElement);
  }
  
  private void registerListener()
  {
    if ((this.mEnable) && (!this.mPaused)) {
      MamlSensorManager.getInstance().registerListener(getContext().mContext, this.mType, this.mRate, this.mSensorEventListener);
    }
  }
  
  private void unregisterListener()
  {
    MamlSensorManager.getInstance().unregisterListener(this.mType, this.mSensorEventListener);
  }
  
  public void finish()
  {
    unregisterListener();
    super.finish();
  }
  
  public void init()
  {
    super.init();
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return new Variable(paramElement, getContext().mVariables);
  }
  
  public void pause()
  {
    super.pause();
    this.mPaused = true;
    unregisterListener();
  }
  
  public void resume()
  {
    super.resume();
    this.mPaused = false;
    registerListener();
  }
  
  public void turnOffSensorBinder()
  {
    this.mEnable = false;
    unregisterListener();
  }
  
  public void turnOnSensorBinder()
  {
    this.mEnable = true;
    registerListener();
  }
  
  private static class Variable
    extends VariableBinder.Variable
  {
    public int mIndex;
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super(paramVariables);
      this.mIndex = Utils.getAttrAsInt(paramElement, "index", 0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.SensorBinder
 * JD-Core Version:    0.7.0.1
 */