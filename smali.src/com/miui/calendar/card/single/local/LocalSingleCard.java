package com.miui.calendar.card.single.local;

import android.content.Context;
import android.text.TextUtils;
import android.widget.BaseAdapter;
import androidx.annotation.Keep;
import com.google.gson.JsonElement;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.util.Calendar;
import java.util.Locale;
import s3.a;

public abstract class LocalSingleCard
  extends a
{
  public boolean l;
  protected LocalCardSchema m;
  protected LocalCardSchema n;
  protected LocalCardExtraSchema o;
  protected LocalCardExtraSchema p;
  
  public LocalSingleCard(Context paramContext, int paramInt, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, paramInt, paramContainerType, paramCalendar, paramBaseAdapter);
    this.f = p(paramInt);
  }
  
  public static String p(int paramInt)
  {
    return String.format(Locale.ENGLISH, "%d_%d", new Object[] { Integer.valueOf(81), Integer.valueOf(paramInt) });
  }
  
  private String r()
  {
    return String.format(Locale.ENGLISH, "%s_%d", new Object[] { "local_card", Integer.valueOf(this.c) });
  }
  
  public void a()
  {
    LocalCardSchema localLocalCardSchema = this.n;
    this.m = localLocalCardSchema;
    if (localLocalCardSchema != null) {
      this.g = localLocalCardSchema.sequence;
    }
    this.o = this.p;
    super.a();
  }
  
  public void b()
  {
    if (s())
    {
      Object localObject = q.d(this.a, r());
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        try
        {
          localObject = (LocalCardSchema)x.a((String)localObject, LocalCardSchema.class);
          this.n = ((LocalCardSchema)localObject);
          this.p = t((LocalCardSchema)localObject);
        }
        catch (Exception localException)
        {
          z.d("Cal:D:LocalSingleCard", "doInBackground() ", localException);
        }
      }
    }
    super.b();
  }
  
  public void o(LocalCardSchema paramLocalCardSchema)
  {
    this.m = paramLocalCardSchema;
    if (paramLocalCardSchema != null)
    {
      q.f(this.a, r(), x.c(this.m));
      this.g = this.m.sequence;
    }
    else
    {
      q.h(this.a, r());
    }
    this.l = true;
    this.o = t(this.m);
  }
  
  protected Class<? extends LocalCardExtraSchema> q()
  {
    return LocalCardExtraSchema.class;
  }
  
  protected boolean s()
  {
    boolean bool;
    if ((y.i(this.a)) && (z0.n(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected LocalCardExtraSchema t(LocalCardSchema paramLocalCardSchema)
  {
    if (paramLocalCardSchema == null)
    {
      paramLocalCardSchema = new StringBuilder();
      paramLocalCardSchema.append("cardId=");
      paramLocalCardSchema.append(this.f);
      paramLocalCardSchema.append(":prepareExtraData() mCard is null");
      z.m("Cal:D:LocalSingleCard", paramLocalCardSchema.toString());
      return null;
    }
    try
    {
      paramLocalCardSchema = (LocalCardExtraSchema)x.a(paramLocalCardSchema.extra.toString(), q());
      return paramLocalCardSchema;
    }
    catch (Exception localException)
    {
      paramLocalCardSchema = new StringBuilder();
      paramLocalCardSchema.append("cardId=");
      paramLocalCardSchema.append(this.f);
      paramLocalCardSchema.append(":prepareExtraData()");
      z.d("Cal:D:LocalSingleCard", paramLocalCardSchema.toString(), localException);
    }
    return null;
  }
  
  @Keep
  public class LocalCardExtraSchema
  {
    public LocalCardExtraSchema() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.single.local.LocalSingleCard
 * JD-Core Version:    0.7.0.1
 */