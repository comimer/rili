.class public final Lcom/android/calendar/event/v2/sms/h;
.super Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
.source "ElectricityBillEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/ElectricityBillEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0016\u0010\u0017\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010&\u001a\u00020#8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/h;",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/ElectricityBillEvent;",
        "Landroid/content/Intent;",
        "intent",
        "Lkotlin/u;",
        "h0",
        "Landroid/view/View;",
        "rootView",
        "d0",
        "",
        "eventId",
        "v0",
        "event",
        "w0",
        "s0",
        "",
        "U",
        "",
        "e0",
        "",
        "Lw3/b;",
        "items",
        "O",
        "Landroid/widget/TextView;",
        "z",
        "Landroid/widget/TextView;",
        "mBillName",
        "D",
        "mBillCost",
        "E",
        "mBillAmount",
        "F",
        "Lcom/android/calendar/common/event/schema/ElectricityBillEvent;",
        "mElectricityEvent",
        "",
        "V",
        "()Ljava/lang/String;",
        "deleteToast",
        "<init>",
        "()V",
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
.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

.field public G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->G:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public O(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw3/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAccount()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lw3/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f120248

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAccount()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lw3/b;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v0, Lw3/b;

    .line 44
    .line 45
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 46
    .line 47
    .line 48
    const v1, 0x7f120249

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/SmsEvent;->getEventCreateTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const v4, 0x7f120150

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2, v3, v4}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, v0, Lw3/b;->d:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->O(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    return-void
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected U()I
    .locals 1

    const v0, 0x7f0d00e5

    return v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 1
    const v0, 0x7f1201b8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(R.string.elect\u2026vent_delete_successfully)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
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

.method public d0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a00f0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "rootView.findViewById<TextView>(R.id.bill_name)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->z:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a00ef

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "rootView.findViewById<TextView>(R.id.bill_cost)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->D:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a00ee

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "rootView.findViewById<TextView>(R.id.bill_amount)"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/h;->E:Landroid/widget/TextView;

    .line 53
    .line 54
    return-void
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
.end method

.method protected e0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/SmsEvent;->getEventCreateTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x5265c00

    .line 8
    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method protected h0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 7
    .line 8
    const-string v1, "cost"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->setCost(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 18
    .line 19
    const-string v1, "account"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->setAccount(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 29
    .line 30
    const-string v1, "amount"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->setAmount(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 40
    .line 41
    const-string v1, "interval"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->setInterval(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
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
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/h;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/h;->w0(Lcom/android/calendar/common/event/schema/ElectricityBillEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/h;->w0(Lcom/android/calendar/common/event/schema/ElectricityBillEvent;)V

    return-void
.end method

.method public s0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->z:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mBillName"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const v2, 0x7f1201b6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->D:Landroid/widget/TextView;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "mBillCost"

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getCost()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v2, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    move v2, v4

    .line 52
    :goto_1
    const-string v5, "0"

    .line 53
    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getCost()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v6, "mElectricityEvent.cost"

    .line 63
    .line 64
    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getCost()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    sub-int/2addr v6, v4

    .line 78
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 83
    .line 84
    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move-object v2, v5

    .line 89
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/h;->E:Landroid/widget/TextView;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    const-string v0, "mBillAmount"

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move-object v1, v0

    .line 103
    :goto_3
    const v0, 0x7f1201b5

    .line 104
    .line 105
    .line 106
    new-array v2, v4, [Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v6, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAmount()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_6

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    move v4, v3

    .line 124
    :cond_7
    :goto_4
    if-nez v4, :cond_8

    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAmount()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :cond_8
    aput-object v5, v2, v3

    .line 133
    .line 134
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    return-void
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/h;->v0(J)Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
    .line 6
    .line 7
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

.method protected v0(J)Lcom/android/calendar/common/event/schema/ElectricityBillEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    invoke-static {v0, p1, p2, v1}, Ls1/g;->b(Landroid/content/Context;JI)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 12
    .line 13
    return-object p1
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

.method protected w0(Lcom/android/calendar/common/event/schema/ElectricityBillEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/h;->F:Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V

    .line 9
    .line 10
    .line 11
    return-void
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
