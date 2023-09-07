.class public final synthetic Lcom/android/calendar/event/v2/sms/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/s;->a:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/s;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/s;->a:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/s;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->v0(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Landroid/content/Intent;)V

    return-void
.end method
