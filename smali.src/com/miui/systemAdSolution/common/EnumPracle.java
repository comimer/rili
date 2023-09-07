package com.miui.systemAdSolution.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class EnumPracle<T extends Enum>
  implements Parcelable
{
  public static final Parcelable.Creator<EnumPracle> CREATOR = new b();
  private static final String TAG = "AdTrackType";
  private T mValue;
  
  protected EnumPracle(Parcel paramParcel)
  {
    String str;
    Object localObject1;
    int i;
    if (paramParcel != null)
    {
      str = paramParcel.readString();
      localObject1 = paramParcel.readString();
      i = paramParcel.readInt();
      paramParcel = (Parcel)localObject1;
    }
    else
    {
      i = -1;
      str = null;
      paramParcel = str;
    }
    if ((i != -1) && (!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramParcel)))
    {
      try
      {
        localObject1 = Class.forName(str);
        Enum[] arrayOfEnum = (Enum[])Enum.class.getDeclaredMethod("getSharedConstants", new Class[] { Class.class }).invoke(null, new Object[] { localObject1 });
        if ((arrayOfEnum != null) && (arrayOfEnum.length > 0))
        {
          int j = arrayOfEnum.length;
          for (int k = 0; k < j; k++)
          {
            localObject1 = arrayOfEnum[k];
            if (localObject1 != null)
            {
              localObject2 = Enum.class.getDeclaredField("name");
              if (localObject2 != null)
              {
                if (!((AccessibleObject)localObject2).isAccessible()) {
                  ((AccessibleObject)localObject2).setAccessible(true);
                }
                if (TextUtils.equals((String)((Field)localObject2).get(localObject1), paramParcel))
                {
                  localObject2 = Enum.class.getDeclaredField("ordinal");
                  if (!((AccessibleObject)localObject2).isAccessible()) {
                    ((AccessibleObject)localObject2).setAccessible(true);
                  }
                  k = ((Field)localObject2).getInt(localObject1);
                  if (k == i)
                  {
                    this.mValue = ((Enum)localObject1);
                    return;
                  }
                  localObject1 = String.format("the value[%s] which name is [%s] in the enum[%s] is not equal the value defined[%s].", new Object[] { Integer.valueOf(i), paramParcel, str, Integer.valueOf(k) });
                  localObject2 = new com/miui/systemAdSolution/common/UnsupportEnumException;
                  ((UnsupportEnumException)localObject2).<init>((String)localObject1);
                  throw ((Throwable)localObject2);
                }
              }
            }
          }
          localObject1 = String.format("the name[%s] in the enum[%s] is not defined.", new Object[] { paramParcel, str });
          localObject2 = new com/miui/systemAdSolution/common/UnsupportEnumException;
          ((UnsupportEnumException)localObject2).<init>((String)localObject1);
          throw ((Throwable)localObject2);
        }
        Object localObject2 = String.format("the enum[%s] is not define.", new Object[] { str });
        localObject1 = new com/miui/systemAdSolution/common/UnsupportEnumException;
        ((UnsupportEnumException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
      catch (Exception localException)
      {
        noSupportLog(str, paramParcel, i, localException);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        noSupportLog(str, paramParcel, i, localNoSuchFieldException);
      }
      catch (ClassCastException localClassCastException)
      {
        noSupportLog(str, paramParcel, i, localClassCastException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        noSupportLog(str, paramParcel, i, localIllegalAccessException);
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        noSupportLog(str, paramParcel, i, localInvocationTargetException);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        noSupportLog(str, paramParcel, i, localNoSuchMethodException);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        noSupportLog(str, paramParcel, i, localClassNotFoundException);
      }
      return;
    }
    noSupportLog(str, paramParcel, i, null);
  }
  
  public EnumPracle(T paramT)
  {
    if (paramT != null)
    {
      this.mValue = paramT;
      return;
    }
    throw new IllegalArgumentException("type must not be null.");
  }
  
  private void noSupportLog(String paramString1, String paramString2, int paramInt, Throwable paramThrowable)
  {
    paramString1 = String.format("the value[%s] which name is [%s] in the enum[%s] is not support.", new Object[] { Integer.valueOf(paramInt), paramString2, paramString1 });
    if (paramThrowable == null) {
      Log.e("AdTrackType", paramString1);
    } else {
      Log.e("AdTrackType", paramString1, paramThrowable);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public T getValue()
  {
    return this.mValue;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mValue.getClass().getName());
    paramParcel.writeString(this.mValue.name());
    paramParcel.writeInt(this.mValue.ordinal());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.common.EnumPracle
 * JD-Core Version:    0.7.0.1
 */