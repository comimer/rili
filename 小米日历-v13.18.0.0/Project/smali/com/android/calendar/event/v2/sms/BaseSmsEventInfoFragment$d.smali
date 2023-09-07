.class public final Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;
.super Ljava/lang/Object;
.source "BaseSmsEventInfoFragment.kt"

# interfaces
.implements Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Q(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$b;",
        "Lkotlin/u;",
        "a",
        "b",
        "onCancel",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Landroid/widget/CompoundButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
            "TT;>;",
            "Landroid/widget/CompoundButton;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->b:Landroid/widget/CompoundButton;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->N(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 24
    .line 25
    .line 26
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->N(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v2}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->N(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->a:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v0, v2, v1}, Lcom/android/calendar/settings/j;->u(Landroid/content/Context;IZ)V

    .line 43
    .line 44
    .line 45
    return-void
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$d;->b:Landroid/widget/CompoundButton;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5
    .line 6
    .line 7
    return-void
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
