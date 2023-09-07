package androidx.core.app;

import android.app.Notification;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.b;

class t
{
  private final Context a;
  private final Notification.Builder b;
  private final l.c c;
  private RemoteViews d;
  private RemoteViews e;
  private final List<Bundle> f = new ArrayList();
  private final Bundle g = new Bundle();
  private int h;
  private RemoteViews i;
  
  t(l.c paramc)
  {
    this.c = paramc;
    this.a = paramc.a;
    Object localObject1 = new Notification.Builder(paramc.a, paramc.J);
    this.b = ((Notification.Builder)localObject1);
    Notification localNotification = paramc.Q;
    Object localObject2 = ((Notification.Builder)localObject1).setWhen(localNotification.when).setSmallIcon(localNotification.icon, localNotification.iconLevel).setContent(localNotification.contentView).setTicker(localNotification.tickerText, paramc.i).setVibrate(localNotification.vibrate).setLights(localNotification.ledARGB, localNotification.ledOnMS, localNotification.ledOffMS);
    boolean bool;
    if ((localNotification.flags & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setOngoing(bool);
    if ((localNotification.flags & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setOnlyAlertOnce(bool);
    if ((localNotification.flags & 0x10) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject2 = ((Notification.Builder)localObject2).setAutoCancel(bool).setDefaults(localNotification.defaults).setContentTitle(paramc.e).setContentText(paramc.f).setContentInfo(paramc.k).setContentIntent(paramc.g).setDeleteIntent(localNotification.deleteIntent);
    Object localObject3 = paramc.h;
    if ((localNotification.flags & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    ((Notification.Builder)localObject2).setFullScreenIntent((PendingIntent)localObject3, bool).setLargeIcon(paramc.j).setNumber(paramc.l).setProgress(paramc.s, paramc.t, paramc.u);
    ((Notification.Builder)localObject1).setSubText(paramc.p).setUsesChronometer(paramc.o).setPriority(paramc.m);
    localObject1 = paramc.b.iterator();
    while (((Iterator)localObject1).hasNext()) {
      a((l.a)((Iterator)localObject1).next());
    }
    localObject1 = paramc.C;
    if (localObject1 != null) {
      this.g.putAll((Bundle)localObject1);
    }
    int j = Build.VERSION.SDK_INT;
    this.d = paramc.G;
    this.e = paramc.H;
    this.b.setShowWhen(paramc.n);
    this.b.setLocalOnly(paramc.y).setGroup(paramc.v).setGroupSummary(paramc.w).setSortKey(paramc.x);
    this.h = paramc.N;
    this.b.setCategory(paramc.B).setColor(paramc.D).setVisibility(paramc.E).setPublicVersion(paramc.F).setSound(localNotification.sound, localNotification.audioAttributes);
    if (j < 28) {
      localObject1 = d(e(paramc.c), paramc.T);
    } else {
      localObject1 = paramc.T;
    }
    if ((localObject1 != null) && (!((List)localObject1).isEmpty()))
    {
      localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (String)((Iterator)localObject2).next();
        this.b.addPerson((String)localObject1);
      }
    }
    this.i = paramc.I;
    if (paramc.d.size() > 0)
    {
      localObject2 = paramc.b().getBundle("android.car.EXTENSIONS");
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      localObject3 = new Bundle((Bundle)localObject1);
      localObject2 = new Bundle();
      for (j = 0; j < paramc.d.size(); j++) {
        ((Bundle)localObject2).putBundle(Integer.toString(j), u.a((l.a)paramc.d.get(j)));
      }
      ((Bundle)localObject1).putBundle("invisible_actions", (Bundle)localObject2);
      ((Bundle)localObject3).putBundle("invisible_actions", (Bundle)localObject2);
      paramc.b().putBundle("android.car.EXTENSIONS", (Bundle)localObject1);
      this.g.putBundle("android.car.EXTENSIONS", (Bundle)localObject3);
    }
    j = Build.VERSION.SDK_INT;
    localObject1 = paramc.S;
    if (localObject1 != null) {
      this.b.setSmallIcon((Icon)localObject1);
    }
    this.b.setExtras(paramc.C).setRemoteInputHistory(paramc.r);
    localObject1 = paramc.G;
    if (localObject1 != null) {
      this.b.setCustomContentView((RemoteViews)localObject1);
    }
    localObject1 = paramc.H;
    if (localObject1 != null) {
      this.b.setCustomBigContentView((RemoteViews)localObject1);
    }
    localObject1 = paramc.I;
    if (localObject1 != null) {
      this.b.setCustomHeadsUpContentView((RemoteViews)localObject1);
    }
    this.b.setBadgeIconType(paramc.K).setSettingsText(paramc.q).setShortcutId(paramc.L).setTimeoutAfter(paramc.M).setGroupAlertBehavior(paramc.N);
    if (paramc.A) {
      this.b.setColorized(paramc.z);
    }
    if (!TextUtils.isEmpty(paramc.J)) {
      this.b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
    }
    if (j >= 28)
    {
      localObject2 = paramc.c.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (w)((Iterator)localObject2).next();
        m.a(this.b, ((w)localObject1).h());
      }
    }
    j = Build.VERSION.SDK_INT;
    if (j >= 29)
    {
      n.a(this.b, paramc.P);
      o.a(this.b, l.b.a(null));
    }
    if (j >= 31)
    {
      j = paramc.O;
      if (j != 0) {
        p.a(this.b, j);
      }
    }
    if (paramc.R)
    {
      if (this.c.w) {
        this.h = 2;
      } else {
        this.h = 1;
      }
      this.b.setVibrate(null);
      this.b.setSound(null);
      j = localNotification.defaults & 0xFFFFFFFE & 0xFFFFFFFD;
      localNotification.defaults = j;
      this.b.setDefaults(j);
      if (TextUtils.isEmpty(this.c.v)) {
        this.b.setGroup("silent");
      }
      this.b.setGroupAlertBehavior(this.h);
    }
  }
  
  private void a(l.a parama)
  {
    Object localObject = parama.d();
    if (localObject != null) {
      localObject = ((IconCompat)localObject).m();
    } else {
      localObject = null;
    }
    Notification.Action.Builder localBuilder = new Notification.Action.Builder((Icon)localObject, parama.h(), parama.a());
    if (parama.e() != null)
    {
      localObject = x.b(parama.e());
      int j = localObject.length;
      for (k = 0; k < j; k++) {
        localBuilder.addRemoteInput(localObject[k]);
      }
    }
    if (parama.c() != null) {
      localObject = new Bundle(parama.c());
    } else {
      localObject = new Bundle();
    }
    ((BaseBundle)localObject).putBoolean("android.support.allowGeneratedReplies", parama.b());
    int k = Build.VERSION.SDK_INT;
    localBuilder.setAllowGeneratedReplies(parama.b());
    ((BaseBundle)localObject).putInt("android.support.action.semanticAction", parama.f());
    if (k >= 28) {
      q.a(localBuilder, parama.f());
    }
    if (k >= 29) {
      r.a(localBuilder, parama.j());
    }
    if (k >= 31) {
      s.a(localBuilder, parama.i());
    }
    ((BaseBundle)localObject).putBoolean("android.support.action.showsUserInterface", parama.g());
    localBuilder.addExtras((Bundle)localObject);
    this.b.addAction(localBuilder.build());
  }
  
  private static List<String> d(List<String> paramList1, List<String> paramList2)
  {
    if (paramList1 == null) {
      return paramList2;
    }
    if (paramList2 == null) {
      return paramList1;
    }
    b localb = new b(paramList1.size() + paramList2.size());
    localb.addAll(paramList1);
    localb.addAll(paramList2);
    return new ArrayList(localb);
  }
  
  private static List<String> e(List<w> paramList)
  {
    if (paramList == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(((w)paramList.next()).g());
    }
    return localArrayList;
  }
  
  public Notification b()
  {
    this.c.getClass();
    Notification localNotification = c();
    RemoteViews localRemoteViews = this.c.G;
    if (localRemoteViews != null) {
      localNotification.contentView = localRemoteViews;
    }
    return localNotification;
  }
  
  protected Notification c()
  {
    return this.b.build();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.t
 * JD-Core Version:    0.7.0.1
 */