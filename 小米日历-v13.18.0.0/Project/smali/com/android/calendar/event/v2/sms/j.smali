.class public final synthetic Lcom/android/calendar/event/v2/sms/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/event/v2/sms/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/event/v2/sms/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/j;->a:Lcom/android/calendar/event/v2/sms/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/j;->a:Lcom/android/calendar/event/v2/sms/m;

    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/m;->M0(Lcom/android/calendar/event/v2/sms/m;)V

    return-void
.end method
