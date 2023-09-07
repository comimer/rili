.class public final synthetic Lcom/android/calendar/event/v2/sms/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

.field public final synthetic b:Lw7/l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/f;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/f;->b:Lw7/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/f;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/f;->b:Lw7/l;

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->L(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lw7/l;Landroid/content/DialogInterface;I)V

    return-void
.end method
