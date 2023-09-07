package com.android.calendar.common;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.card.schema.SimpleDialogSchema;
import com.miui.calendar.util.a;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Keep
public class ModuleSchema
  implements Comparable<ModuleSchema>
{
  public String actionIcon;
  @SerializedName("action")
  public List<ActionSchema> actionList;
  public String category;
  public String fontColor;
  public String moduleIcon;
  public long moduleTplId;
  public int sort;
  public String subTitle;
  public String title;
  
  private a getActionIntent(Context paramContext)
  {
    return getActionIntent(paramContext, null);
  }
  
  private a getActionIntent(Context paramContext, Map<String, String> paramMap)
  {
    paramContext = getIntent(paramContext, paramMap);
    if (paramContext != null) {
      return new a(paramContext);
    }
    return null;
  }
  
  private a getActionIntentToMarket(boolean paramBoolean)
  {
    if (hasAction())
    {
      Iterator localIterator = this.actionList.iterator();
      while (localIterator.hasNext())
      {
        Intent localIntent = ActionSchema.getIntentToMarket(((ActionSchema)localIterator.next()).actionParams.packageName, paramBoolean);
        if (localIntent != null) {
          return new a(localIntent);
        }
      }
    }
    return null;
  }
  
  public static Type getListType()
  {
    return new b().getType();
  }
  
  private boolean hasAction()
  {
    List localList = this.actionList;
    boolean bool;
    if ((localList != null) && (!localList.isEmpty())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isActionListEquals(List<ActionSchema> paramList)
  {
    List localList = this.actionList;
    if ((localList == null) && (paramList == null)) {
      return true;
    }
    if (((localList != null) && (paramList == null)) || ((localList == null) && (paramList != null)) || (localList.size() != paramList.size())) {
      return false;
    }
    for (int i = 0; i < this.actionList.size(); i++) {
      if (!((ActionSchema)this.actionList.get(i)).equals(paramList.get(i))) {
        return false;
      }
    }
    return true;
  }
  
  public int compareTo(ModuleSchema paramModuleSchema)
  {
    return paramModuleSchema.sort - this.sort;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramObject != null)
    {
      bool2 = bool1;
      if ((paramObject instanceof ModuleSchema))
      {
        paramObject = (ModuleSchema)paramObject;
        long l = this.moduleTplId;
        bool2 = bool1;
        if (l == l)
        {
          bool2 = bool1;
          if (TextUtils.equals(paramObject.title, this.title))
          {
            bool2 = bool1;
            if (TextUtils.equals(paramObject.subTitle, this.subTitle))
            {
              bool2 = bool1;
              if (TextUtils.equals(paramObject.moduleIcon, this.moduleIcon))
              {
                bool2 = bool1;
                if (TextUtils.equals(paramObject.actionIcon, this.actionIcon))
                {
                  bool2 = bool1;
                  if (isActionListEquals(paramObject.actionList)) {
                    bool2 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public Intent getIntent(Context paramContext)
  {
    return getIntent(paramContext, null);
  }
  
  public Intent getIntent(Context paramContext, Map<String, String> paramMap)
  {
    if (hasAction())
    {
      Collections.sort(this.actionList);
      Iterator localIterator = this.actionList.iterator();
      while (localIterator.hasNext())
      {
        Intent localIntent = ((ActionSchema)localIterator.next()).toIntent(paramContext, paramMap);
        if (localIntent != null) {
          return localIntent;
        }
      }
    }
    return null;
  }
  
  public boolean sendIntent(Context paramContext)
  {
    return sendIntent(paramContext, null);
  }
  
  public boolean sendIntent(Context paramContext, Map<String, String> paramMap)
  {
    return sendIntent(paramContext, paramMap, 0);
  }
  
  public boolean sendIntent(Context paramContext, Map<String, String> paramMap, int paramInt)
  {
    return sendIntent(paramContext, paramMap, paramInt, null);
  }
  
  public boolean sendIntent(Context paramContext, Map<String, String> paramMap, int paramInt, Map<String, ?> paramMap1)
  {
    paramMap = getActionIntent(paramContext, paramMap);
    if (paramMap == null) {
      return false;
    }
    paramMap.c(paramContext, paramMap1, paramInt);
    return true;
  }
  
  public boolean sendIntentForDeepLink(Context paramContext)
  {
    if (!hasAction()) {
      return false;
    }
    Object localObject = ((ActionSchema)this.actionList.get(0)).actionParams.packageName;
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!Utils.i0(paramContext, (String)localObject))) {
      localObject = getActionIntentToMarket(false);
    } else {
      localObject = getActionIntent(paramContext);
    }
    if (localObject == null) {
      return false;
    }
    ((a)localObject).a(paramContext);
    return true;
  }
  
  public void sendIntentWithInstallAppDialog(final Context paramContext, SimpleDialogSchema paramSimpleDialogSchema)
  {
    if (!hasAction()) {
      return;
    }
    String str = ((ActionSchema)this.actionList.get(0)).actionParams.packageName;
    if ((paramSimpleDialogSchema != null) && (!TextUtils.isEmpty(str)) && (!Utils.i0(paramContext, str)))
    {
      paramSimpleDialogSchema.positiveButtonClickListener = new a(paramContext, paramSimpleDialogSchema.positiveButtonClickListener);
      paramSimpleDialogSchema.show(paramContext);
    }
    else
    {
      paramSimpleDialogSchema = getActionIntent(paramContext);
      if (paramSimpleDialogSchema != null) {
        paramSimpleDialogSchema.a(paramContext);
      }
    }
  }
  
  class a
    implements DialogInterface.OnClickListener
  {
    a(Context paramContext, DialogInterface.OnClickListener paramOnClickListener) {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      Object localObject = ModuleSchema.this.getActionIntentToMarket(true);
      if (localObject != null) {
        ((a)localObject).a(paramContext);
      }
      localObject = this.b;
      if (localObject != null) {
        ((DialogInterface.OnClickListener)localObject).onClick(paramDialogInterface, paramInt);
      }
    }
  }
  
  class b
    extends TypeToken<List<ModuleSchema>>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.ModuleSchema
 * JD-Core Version:    0.7.0.1
 */