package com.miui.maml.data;

import android.text.TextUtils;
import com.miui.maml.ScreenElementRoot;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class VariableUpdaterManager
{
  public static final String USE_TAG_NONE = "none";
  private WeakReference<ScreenElementRoot> mRootRef;
  private ArrayList<VariableUpdater> mUpdaters = new ArrayList();
  
  public VariableUpdaterManager(ScreenElementRoot paramScreenElementRoot)
  {
    this.mRootRef = new WeakReference(paramScreenElementRoot);
  }
  
  public void add(VariableUpdater paramVariableUpdater)
  {
    this.mUpdaters.add(paramVariableUpdater);
  }
  
  public void addFromTag(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!"none".equalsIgnoreCase(paramString)))
    {
      String[] arrayOfString = paramString.split(",");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str1 = arrayOfString[j].trim();
        paramString = null;
        int k = str1.indexOf('.');
        String str2 = str1;
        if (k != -1)
        {
          str2 = str1.substring(0, k);
          paramString = str1.substring(k + 1);
        }
        if (str2.equals("DateTime")) {
          add(new DateTimeVariableUpdater(this, paramString));
        } else if (str2.equals("Battery")) {
          add(new BatteryVariableUpdater(this));
        }
      }
    }
  }
  
  public void finish()
  {
    Iterator localIterator = this.mUpdaters.iterator();
    while (localIterator.hasNext()) {
      ((VariableUpdater)localIterator.next()).finish();
    }
  }
  
  public ScreenElementRoot getRoot()
  {
    Object localObject = this.mRootRef;
    if (localObject != null) {
      localObject = (ScreenElementRoot)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void init()
  {
    Iterator localIterator = this.mUpdaters.iterator();
    while (localIterator.hasNext()) {
      ((VariableUpdater)localIterator.next()).init();
    }
  }
  
  public void pause()
  {
    Iterator localIterator = this.mUpdaters.iterator();
    while (localIterator.hasNext()) {
      ((VariableUpdater)localIterator.next()).pause();
    }
  }
  
  public void remove(VariableUpdater paramVariableUpdater)
  {
    this.mUpdaters.remove(paramVariableUpdater);
  }
  
  public void resume()
  {
    Iterator localIterator = this.mUpdaters.iterator();
    while (localIterator.hasNext()) {
      ((VariableUpdater)localIterator.next()).resume();
    }
  }
  
  public void tick(long paramLong)
  {
    Iterator localIterator = this.mUpdaters.iterator();
    while (localIterator.hasNext()) {
      ((VariableUpdater)localIterator.next()).tick(paramLong);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.VariableUpdaterManager
 * JD-Core Version:    0.7.0.1
 */