package com.miui.calendar.detail;

import android.content.Context;
import android.widget.BaseAdapter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.b.b;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.card.schema.LocalCardSchema;
import com.miui.calendar.card.single.custom.CustomSingleCard;
import com.miui.calendar.card.single.local.LocalSingleCard;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class g
  extends com.miui.calendar.card.b
{
  private Map<String, s3.a> h = new HashMap();
  private CustomCardSchema i;
  
  public g(Context paramContext, BaseAdapter paramBaseAdapter)
  {
    super(paramContext, paramBaseAdapter);
  }
  
  protected void h(r0 paramr0)
  {
    ArrayList localArrayList = new ArrayList();
    paramr0 = this.i;
    if (paramr0 != null)
    {
      LocalCardSchema localLocalCardSchema = null;
      Object localObject = paramr0.extra;
      paramr0 = localLocalCardSchema;
      if (localObject != null) {
        try
        {
          paramr0 = ((JsonObject)localObject).get("desc").getAsString();
        }
        catch (Exception paramr0)
        {
          z.m("Cal:D:CardDetailCardFactory", "parse description error");
          paramr0 = localLocalCardSchema;
        }
      }
      localLocalCardSchema = new LocalCardSchema();
      localLocalCardSchema.showType = 12;
      localObject = this.i;
      localLocalCardSchema.icon = ((CustomCardSchema)localObject).icon;
      localLocalCardSchema.title = ((CustomCardSchema)localObject).title;
      localLocalCardSchema.description = paramr0;
      localLocalCardSchema.extra = new JsonObject();
      localObject = this.a;
      paramr0 = Card.ContainerType.CARD_DETAIL;
      localObject = r3.b.i((Context)localObject, paramr0, this.c, this.b, localLocalCardSchema.showType, this.h);
      if ((localObject != null) && ((localObject instanceof LocalSingleCard)))
      {
        localObject = (LocalSingleCard)localObject;
        ((LocalSingleCard)localObject).o(localLocalCardSchema);
        localArrayList.add(localObject);
      }
      paramr0 = r3.a.j(this.a, paramr0, this.c, this.b, this.i, this.h);
      if ((paramr0 != null) && ((paramr0 instanceof CustomSingleCard)))
      {
        paramr0 = (CustomSingleCard)paramr0;
        paramr0.x(this.i);
        localArrayList.add(paramr0);
      }
    }
    this.d = localArrayList;
  }
  
  public void i(CustomCardSchema paramCustomCardSchema, b.b paramb)
  {
    this.i = paramCustomCardSchema;
    f(new r0(), paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.detail.g
 * JD-Core Version:    0.7.0.1
 */