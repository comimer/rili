package com.android.calendar.cards;

import androidx.annotation.Keep;
import com.android.calendar.common.ModuleSchema;
import com.google.gson.JsonElement;
import com.miui.calendar.card.schema.CustomCardItemSchema;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/HoroscopePresenter;", "Lcom/android/calendar/cards/b;", "Lcom/android/calendar/cards/HoroscopePresenter$b;", "Lkotlin/u;", "h", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "customCardSchema", "m", "Ljava/lang/Class;", "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;", "l", "Lcom/android/calendar/cards/m1;", "b", "", "e", "", "c", "k", "", "f", "Ljava/util/List;", "mCachedItemExtras", "g", "Lcom/android/calendar/cards/HoroscopePresenter$b;", "mHoroscopeData", "Lcom/android/calendar/cards/t;", "mCardController", "<init>", "(Lcom/android/calendar/cards/t;)V", "a", "CustomCardExtraSchema", "HoroscopeItemExtraSchema", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class HoroscopePresenter
  extends b<b>
{
  public static final a h = new a(null);
  private List<HoroscopeItemExtraSchema> f = new ArrayList();
  private b g = new b();
  
  public HoroscopePresenter(t paramt)
  {
    super(paramt);
  }
  
  protected m1<?, ?> b()
  {
    return new a1(this.d);
  }
  
  protected int c()
  {
    return 28;
  }
  
  protected boolean e()
  {
    Object localObject = this.g.a();
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (localObject != null)
    {
      localObject = this.g.a();
      if (localObject != null)
      {
        localObject = ((CustomCardSchema)localObject).itemList;
        if ((localObject != null) && (((List)localObject).size() == 0))
        {
          i = 1;
          break label55;
        }
      }
      int i = 0;
      label55:
      if (i != 0) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  protected void h()
  {
    this.g = new b();
    Iterator localIterator = CardHelper.b.iterator();
    while (localIterator.hasNext())
    {
      CustomCardSchema localCustomCardSchema = (CustomCardSchema)localIterator.next();
      if (localCustomCardSchema.showType + 20 == 28) {
        this.g.c(localCustomCardSchema);
      }
    }
    m(this.g.a());
    this.g.d(this.f);
    g();
  }
  
  protected b k()
  {
    return this.g;
  }
  
  protected final Class<HoroscopeItemExtraSchema> l()
  {
    return HoroscopeItemExtraSchema.class;
  }
  
  protected final void m(CustomCardSchema paramCustomCardSchema)
  {
    this.g.c(paramCustomCardSchema);
    paramCustomCardSchema = this.g.a();
    Iterator localIterator = null;
    if (paramCustomCardSchema != null) {
      paramCustomCardSchema = paramCustomCardSchema.itemList;
    } else {
      paramCustomCardSchema = null;
    }
    if (paramCustomCardSchema == null)
    {
      z.m("Cal:D:HoroscopePresenter", ":prepareExtraData() mCard.itemList is null");
      return;
    }
    ArrayList localArrayList = new ArrayList();
    CustomCardSchema localCustomCardSchema = this.g.a();
    paramCustomCardSchema = localIterator;
    if (localCustomCardSchema != null) {
      paramCustomCardSchema = localCustomCardSchema.itemList;
    }
    r.c(paramCustomCardSchema);
    localIterator = paramCustomCardSchema.iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        paramCustomCardSchema = (CustomCardItemSchema)localIterator.next();
        try
        {
          localArrayList.add((HoroscopeItemExtraSchema)x.a(paramCustomCardSchema.extra.toString(), l()));
        }
        catch (Exception paramCustomCardSchema)
        {
          z.d("Cal:D:HoroscopePresenter", ":prepareExtraData()", paramCustomCardSchema);
        }
      }
    }
    this.f = localArrayList;
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/cards/HoroscopePresenter$CustomCardExtraSchema;", "", "()V", "changeData", "", "getChangeData", "()I", "setChangeData", "(I)V", "customTitle", "", "getCustomTitle", "()Ljava/lang/String;", "setCustomTitle", "(Ljava/lang/String;)V", "itemNumPerPage", "getItemNumPerPage", "setItemNumPerPage", "suffix", "getSuffix", "setSuffix", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public static final class CustomCardExtraSchema
  {
    private int changeData;
    private String customTitle;
    private int itemNumPerPage;
    private String suffix;
    
    public final int getChangeData()
    {
      return this.changeData;
    }
    
    public final String getCustomTitle()
    {
      return this.customTitle;
    }
    
    public final int getItemNumPerPage()
    {
      return this.itemNumPerPage;
    }
    
    public final String getSuffix()
    {
      return this.suffix;
    }
    
    public final void setChangeData(int paramInt)
    {
      this.changeData = paramInt;
    }
    
    public final void setCustomTitle(String paramString)
    {
      this.customTitle = paramString;
    }
    
    public final void setItemNumPerPage(int paramInt)
    {
      this.itemNumPerPage = paramInt;
    }
    
    public final void setSuffix(String paramString)
    {
      this.suffix = paramString;
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;", "", "(Lcom/android/calendar/cards/HoroscopePresenter;)V", "ComprehensiveIndex", "", "getComprehensiveIndex", "()Ljava/lang/String;", "setComprehensiveIndex", "(Ljava/lang/String;)V", "FinancialIndex", "getFinancialIndex", "setFinancialIndex", "LoveIndex", "getLoveIndex", "setLoveIndex", "WorkingIndex", "getWorkingIndex", "setWorkingIndex", "actions", "", "Lcom/android/calendar/common/ModuleSchema;", "getActions", "()[Lcom/android/calendar/common/ModuleSchema;", "setActions", "([Lcom/android/calendar/common/ModuleSchema;)V", "[Lcom/android/calendar/common/ModuleSchema;", "referId", "getReferId", "setReferId", "titleBanner", "getTitleBanner", "()Lcom/android/calendar/common/ModuleSchema;", "setTitleBanner", "(Lcom/android/calendar/common/ModuleSchema;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  @Keep
  public final class HoroscopeItemExtraSchema
  {
    private String ComprehensiveIndex;
    private String FinancialIndex;
    private String LoveIndex;
    private String WorkingIndex;
    public ModuleSchema[] actions;
    private String referId;
    private ModuleSchema titleBanner;
    
    public final ModuleSchema[] getActions()
    {
      ModuleSchema[] arrayOfModuleSchema = this.actions;
      if (arrayOfModuleSchema != null) {
        return arrayOfModuleSchema;
      }
      r.x("actions");
      return null;
    }
    
    public final String getComprehensiveIndex()
    {
      return this.ComprehensiveIndex;
    }
    
    public final String getFinancialIndex()
    {
      return this.FinancialIndex;
    }
    
    public final String getLoveIndex()
    {
      return this.LoveIndex;
    }
    
    public final String getReferId()
    {
      return this.referId;
    }
    
    public final ModuleSchema getTitleBanner()
    {
      return this.titleBanner;
    }
    
    public final String getWorkingIndex()
    {
      return this.WorkingIndex;
    }
    
    public final void setActions(ModuleSchema[] paramArrayOfModuleSchema)
    {
      r.f(paramArrayOfModuleSchema, "<set-?>");
      this.actions = paramArrayOfModuleSchema;
    }
    
    public final void setComprehensiveIndex(String paramString)
    {
      this.ComprehensiveIndex = paramString;
    }
    
    public final void setFinancialIndex(String paramString)
    {
      this.FinancialIndex = paramString;
    }
    
    public final void setLoveIndex(String paramString)
    {
      this.LoveIndex = paramString;
    }
    
    public final void setReferId(String paramString)
    {
      this.referId = paramString;
    }
    
    public final void setTitleBanner(ModuleSchema paramModuleSchema)
    {
      this.titleBanner = paramModuleSchema;
    }
    
    public final void setWorkingIndex(String paramString)
    {
      this.WorkingIndex = paramString;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/HoroscopePresenter$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/cards/HoroscopePresenter$b;", "", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "a", "Lcom/miui/calendar/card/schema/CustomCardSchema;", "()Lcom/miui/calendar/card/schema/CustomCardSchema;", "c", "(Lcom/miui/calendar/card/schema/CustomCardSchema;)V", "mCachedCard", "", "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;", "Lcom/android/calendar/cards/HoroscopePresenter;", "b", "Ljava/util/List;", "()Ljava/util/List;", "d", "(Ljava/util/List;)V", "mCachedItemExtras", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
  {
    private CustomCardSchema a;
    private List<HoroscopePresenter.HoroscopeItemExtraSchema> b = new ArrayList();
    
    public final CustomCardSchema a()
    {
      return this.a;
    }
    
    public final List<HoroscopePresenter.HoroscopeItemExtraSchema> b()
    {
      return this.b;
    }
    
    public final void c(CustomCardSchema paramCustomCardSchema)
    {
      this.a = paramCustomCardSchema;
    }
    
    public final void d(List<HoroscopePresenter.HoroscopeItemExtraSchema> paramList)
    {
      r.f(paramList, "<set-?>");
      this.b = paramList;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.HoroscopePresenter
 * JD-Core Version:    0.7.0.1
 */