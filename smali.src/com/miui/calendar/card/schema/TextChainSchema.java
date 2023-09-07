package com.miui.calendar.card.schema;

import android.content.Context;
import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.util.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Keep
public class TextChainSchema
{
  private static final int MAX_ACTION_SORT = 10;
  public ModuleSchema action;
  public AdSchema ad;
  public String imgUrl;
  public int sort;
  public String title;
  public TextChainType type;
  
  public static TextChainSchema createTextChain(ModuleSchema paramModuleSchema)
  {
    TextChainSchema localTextChainSchema = new TextChainSchema();
    localTextChainSchema.type = TextChainType.NORMAL;
    localTextChainSchema.imgUrl = l0.e(paramModuleSchema.actionIcon);
    localTextChainSchema.title = paramModuleSchema.title;
    localTextChainSchema.sort = paramModuleSchema.sort;
    localTextChainSchema.action = paramModuleSchema;
    return localTextChainSchema;
  }
  
  public static TextChainSchema createTextChain(AdSchema paramAdSchema)
  {
    TextChainSchema localTextChainSchema = new TextChainSchema();
    localTextChainSchema.type = TextChainType.ADVERTISEMENT;
    List localList = paramAdSchema.imgUrls;
    if (localList != null) {
      localTextChainSchema.imgUrl = ((String)localList.get(0));
    }
    localTextChainSchema.title = paramAdSchema.title;
    localTextChainSchema.ad = paramAdSchema;
    return localTextChainSchema;
  }
  
  public static List<TextChainSchema> createTextChainList(List<ModuleSchema> paramList, List<AdSchema> paramList1)
  {
    if (((paramList != null) && (paramList.size() != 0)) || ((paramList1 != null) && (paramList1.size() != 0)))
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      int j = 0;
      int k = i;
      if (paramList != null) {
        if (paramList.size() == 0)
        {
          k = i;
        }
        else
        {
          HashSet localHashSet = new HashSet();
          for (k = 0; k < paramList.size(); k++)
          {
            TextChainSchema localTextChainSchema = createTextChain((ModuleSchema)paramList.get(k));
            localArrayList.add(localTextChainSchema);
            localHashSet.add(Integer.valueOf(localTextChainSchema.sort));
          }
          if ((paramList1 != null) && (paramList1.size() > 0))
          {
            i = 0;
            int m;
            do
            {
              k = i;
              if (!localHashSet.contains(Integer.valueOf(j)))
              {
                paramList = createTextChain((AdSchema)paramList1.get(i));
                paramList.sort = j;
                localArrayList.add(j, paramList);
                i++;
                k = i;
                if (i >= paramList1.size()) {
                  break;
                }
              }
              m = j + 1;
              j = m;
              i = k;
            } while (m <= 10);
          }
          Collections.sort(localArrayList, new a());
          return localArrayList;
        }
      }
      while (k < paramList1.size())
      {
        localArrayList.add(createTextChain((AdSchema)paramList1.get(k)));
        k++;
      }
      return localArrayList;
    }
    return null;
  }
  
  public void onClick(Context paramContext)
  {
    Object localObject = this.type;
    if (localObject == TextChainType.NORMAL)
    {
      ModuleSchema localModuleSchema = this.action;
      if (localModuleSchema != null)
      {
        localModuleSchema.sendIntent(paramContext);
        return;
      }
    }
    if (localObject == TextChainType.ADVERTISEMENT)
    {
      localObject = this.ad;
      if (localObject != null) {
        AdSchema.onJumpAdItemClicked(paramContext, (AdSchema)localObject);
      }
    }
  }
  
  public void onDisplay(Context paramContext)
  {
    if (this.type == TextChainType.ADVERTISEMENT)
    {
      AdSchema localAdSchema = this.ad;
      if (localAdSchema != null) {
        AdSchema.onAdItemDisplayed(paramContext, localAdSchema);
      }
    }
  }
  
  public static enum TextChainType
  {
    static
    {
      TextChainType localTextChainType1 = new TextChainType("NORMAL", 0);
      NORMAL = localTextChainType1;
      TextChainType localTextChainType2 = new TextChainType("ADVERTISEMENT", 1);
      ADVERTISEMENT = localTextChainType2;
      $VALUES = new TextChainType[] { localTextChainType1, localTextChainType2 };
    }
    
    private TextChainType() {}
  }
  
  class a
    implements Comparator<TextChainSchema>
  {
    public int a(TextChainSchema paramTextChainSchema1, TextChainSchema paramTextChainSchema2)
    {
      return paramTextChainSchema1.sort - paramTextChainSchema2.sort;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.schema.TextChainSchema
 * JD-Core Version:    0.7.0.1
 */