package com.miui.maml.data;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.ArrayMap;
import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class MamlSensorManager
{
  private static final int INVALID_TYPE = -1;
  private static final String TAG = "MAML_SensorManager";
  private static final Object sLock = new Object();
  private static ArrayMap<String, MamlSensor> sSensors = new ArrayMap();
  
  public static MamlSensorManager getInstance()
  {
    return MamlSensorManagerHolder.INSTANCE;
  }
  
  private int getType(String paramString)
  {
    paramString.hashCode();
    switch (paramString.hashCode())
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    i = -1;
                    break;
                  } while (!paramString.equals("accelerometer"));
                  i = 7;
                  break;
                } while (!paramString.equals("linear_acceleration"));
                i = 6;
                break;
              } while (!paramString.equals("gyroscope"));
              i = 5;
              break;
            } while (!paramString.equals("gravity"));
            i = 4;
            break;
          } while (!paramString.equals("light"));
          i = 3;
          break;
        } while (!paramString.equals("proximity"));
        i = 2;
        break;
      } while (!paramString.equals("pressure"));
      i = 1;
      break;
    } while (!paramString.equals("orientation"));
    int i = 0;
    switch (i)
    {
    default: 
      return -1;
    case 7: 
      return 1;
    case 6: 
      return 10;
    case 5: 
      return 4;
    case 4: 
      return 9;
    case 3: 
      return 5;
    case 2: 
      return 8;
    case 1: 
      return 6;
    }
    return 3;
  }
  
  private int getValidRate(int paramInt)
  {
    int i = 1;
    int j = i;
    if (paramInt != 0)
    {
      j = i;
      if (paramInt != 1)
      {
        j = 2;
        if (paramInt != 2) {
          return 3;
        }
      }
    }
    return j;
  }
  
  public void registerListener(Context paramContext, String paramString, int paramInt, SensorEventListener paramSensorEventListener)
  {
    paramInt = getValidRate(paramInt);
    synchronized (sLock)
    {
      MamlSensor localMamlSensor = (MamlSensor)sSensors.get(paramString);
      if (localMamlSensor != null)
      {
        localMamlSensor.addCallback(paramInt, paramSensorEventListener);
      }
      else
      {
        localMamlSensor = new com/miui/maml/data/MamlSensorManager$MamlSensor;
        localMamlSensor.<init>(paramContext, getType(paramString), paramInt);
        if (localMamlSensor.mSensor != null)
        {
          localMamlSensor.addCallback(paramInt, paramSensorEventListener);
          sSensors.put(paramString, localMamlSensor);
        }
      }
      return;
    }
  }
  
  public void unregisterListener(String paramString, SensorEventListener paramSensorEventListener)
  {
    synchronized (sLock)
    {
      MamlSensor localMamlSensor = (MamlSensor)sSensors.get(paramString);
      if (localMamlSensor != null)
      {
        localMamlSensor.removeCallback(paramSensorEventListener);
        if (localMamlSensor.mCallbacks.size() == 0) {
          sSensors.remove(paramString);
        }
      }
      return;
    }
  }
  
  private static class MamlSensor
  {
    private WeakHashMap<SensorEventListener, Integer> mCallbacks = new WeakHashMap();
    private SensorEventListener mListener = new SensorEventListener()
    {
      public void onAccuracyChanged(Sensor paramAnonymousSensor, int paramAnonymousInt) {}
      
      public void onSensorChanged(SensorEvent paramAnonymousSensorEvent)
      {
        synchronized (MamlSensorManager.MamlSensor.this.mLock)
        {
          Iterator localIterator = MamlSensorManager.MamlSensor.this.mCallbacks.keySet().iterator();
          while (localIterator.hasNext()) {
            ((SensorEventListener)localIterator.next()).onSensorChanged(paramAnonymousSensorEvent);
          }
          return;
        }
      }
    };
    private final Object mLock = new Object();
    private int mRate;
    private boolean mRegistered;
    private Sensor mSensor;
    private SensorManager mSensorManager;
    private int mType;
    
    public MamlSensor(Context paramContext, int paramInt1, int paramInt2)
    {
      if (paramInt1 == -1)
      {
        paramContext = new StringBuilder();
        paramContext.append("Wront sensor type: ");
        paramContext.append(paramInt1);
        Log.e("MAML_SensorManager", paramContext.toString());
        return;
      }
      this.mType = paramInt1;
      this.mRate = paramInt2;
      paramContext = (SensorManager)paramContext.getSystemService("sensor");
      this.mSensorManager = paramContext;
      paramContext = paramContext.getDefaultSensor(paramInt1);
      this.mSensor = paramContext;
      if (paramContext == null)
      {
        paramContext = new StringBuilder();
        paramContext.append("Fail to get sensor! TYPE: ");
        paramContext.append(this.mType);
        Log.e("MAML_SensorManager", paramContext.toString());
      }
    }
    
    private boolean registerListener()
    {
      Object localObject = this.mSensor;
      if ((localObject != null) && (!this.mRegistered)) {
        try
        {
          this.mRegistered = this.mSensorManager.registerListener(this.mListener, (Sensor)localObject, this.mRate);
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("registerListener ");
          ((StringBuilder)localObject).append(this.mType);
          Log.d("MAML_SensorManager", ((StringBuilder)localObject).toString());
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      return this.mRegistered;
    }
    
    private void unRegisterListener()
    {
      Object localObject = this.mSensor;
      if ((localObject != null) && (this.mRegistered)) {
        try
        {
          this.mSensorManager.unregisterListener(this.mListener, (Sensor)localObject);
          this.mRegistered = false;
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("unregisterListener ");
          ((StringBuilder)localObject).append(this.mType);
          Log.d("MAML_SensorManager", ((StringBuilder)localObject).toString());
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    
    public void addCallback(int paramInt, SensorEventListener paramSensorEventListener)
    {
      synchronized (this.mLock)
      {
        this.mCallbacks.put(paramSensorEventListener, Integer.valueOf(paramInt));
        int i = 0;
        if (this.mRate < paramInt)
        {
          this.mRate = paramInt;
          i = 1;
        }
        if ((i != 0) && (this.mRegistered)) {
          unRegisterListener();
        }
        registerListener();
        return;
      }
    }
    
    public void removeCallback(SensorEventListener paramSensorEventListener)
    {
      synchronized (this.mLock)
      {
        Integer localInteger1 = (Integer)this.mCallbacks.get(paramSensorEventListener);
        if (localInteger1 == null) {
          return;
        }
        this.mCallbacks.remove(paramSensorEventListener);
        int i = 0;
        int j = i;
        if (this.mRate == localInteger1.intValue())
        {
          this.mRate = 3;
          paramSensorEventListener = this.mCallbacks.values().iterator();
          while (paramSensorEventListener.hasNext())
          {
            Integer localInteger2 = (Integer)paramSensorEventListener.next();
            if (this.mRate > localInteger2.intValue()) {
              this.mRate = localInteger2.intValue();
            }
          }
          j = i;
          if (this.mRate != localInteger1.intValue()) {
            j = 1;
          }
        }
        if (this.mCallbacks.size() == 0)
        {
          unRegisterListener();
        }
        else if (j != 0)
        {
          unRegisterListener();
          registerListener();
        }
        return;
      }
    }
  }
  
  private static class MamlSensorManagerHolder
  {
    public static final MamlSensorManager INSTANCE = new MamlSensorManager(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.MamlSensorManager
 * JD-Core Version:    0.7.0.1
 */