.class public final synthetic Lcom/android/calendar/event/v2/sms/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/e;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/e;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;

    invoke-static {v0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->I(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;Landroid/content/DialogInterface;)V

    return-void
.end method
