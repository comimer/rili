.class public final Lcom/android/calendar/event/v2/sms/g;
.super Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
.source "CreditEventInfoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/CreditEvent;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u00086\u00107J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0014J\u0016\u0010\u0013\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0014J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0002H\u0014J\u0008\u0010\u001b\u001a\u00020\u001aH\u0014R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u0016\u0010#\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001eR\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001eR\u0016\u0010+\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010&R\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00101\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u00068"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/g;",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/CreditEvent;",
        "Landroid/view/View$OnClickListener;",
        "Lkotlin/u;",
        "x0",
        "Landroid/content/Intent;",
        "intent",
        "h0",
        "Landroid/view/View;",
        "rootView",
        "d0",
        "v",
        "onClick",
        "",
        "e0",
        "",
        "Lw3/b;",
        "items",
        "O",
        "s0",
        "",
        "eventId",
        "v0",
        "event",
        "w0",
        "",
        "U",
        "Landroid/widget/TextView;",
        "z",
        "Landroid/widget/TextView;",
        "mBankName",
        "D",
        "mAmountTextView",
        "E",
        "mCardNumberTextView",
        "Landroid/widget/ImageView;",
        "F",
        "Landroid/widget/ImageView;",
        "mAmountVisible",
        "G",
        "mAmountUnit",
        "H",
        "mFakeAmount",
        "I",
        "Lcom/android/calendar/common/event/schema/CreditEvent;",
        "mCreditEvent",
        "J",
        "Z",
        "mShowAmount",
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

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/ImageView;

.field private I:Lcom/android/calendar/common/event/schema/CreditEvent;

.field private J:Z

.field public K:Ljava/util/Map;
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
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->K:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 20
    .line 21
    return-void
    .line 22
.end method

.method private final x0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->F:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mAmountVisible"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-boolean v2, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    const v2, 0x7f0802b6

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const v2, 0x7f0802ab

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->H:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string v0, "mFakeAmount"

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    move v2, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v2, v4

    .line 46
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->D:Landroid/widget/TextView;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    const-string v0, "mAmountTextView"

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v0, v1

    .line 59
    :cond_4
    iget-boolean v2, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    move v2, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const/4 v2, 0x4

    .line 66
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->G:Landroid/widget/TextView;

    .line 70
    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    const-string v0, "mAmountUnit"

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    move-object v1, v0

    .line 80
    :goto_3
    iget-boolean v0, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    move v3, v4

    .line 85
    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    return-void
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
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    const v1, 0x7f120150

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lw3/b;

    .line 22
    .line 23
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const v3, 0x7f1200bc

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v0, Lw3/b;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-static {v2, v3, v4, v1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v0, Lw3/b;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    new-instance v0, Lw3/b;

    .line 59
    .line 60
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const v3, 0x7f1200bd

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, v0, Lw3/b;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-static {v2, v3, v4, v1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lw3/b;->d:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->O(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    return-void
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

    const v0, 0x7f0d00e7

    return v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 1
    const v0, 0x7f12013f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(R.string.credi\u2026vent_delete_successfully)"

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
    .locals 3

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a00db

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->z:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a00a0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->D:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0a0148

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->E:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f0a00a4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->F:Landroid/widget/ImageView;

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    const-string v0, "mAmountVisible"

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a00a3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "rootView.findViewById<TextView>(R.id.amount_unit)"

    .line 85
    .line 86
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->G:Landroid/widget/TextView;

    .line 92
    .line 93
    const v0, 0x7f0a028d

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/g;->H:Landroid/widget/ImageView;

    .line 106
    .line 107
    return-void
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

.method protected e0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

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
    .locals 4

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 7
    .line 8
    const-string v1, "bank_name"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/CreditEvent;->setBankName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 18
    .line 19
    const-string v1, "amount"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/CreditEvent;->setAmount(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 29
    .line 30
    const-string v1, "card_number"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/CreditEvent;->setAccount(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 40
    .line 41
    const-string v1, "repayment_date"

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/CreditEvent;->setRepaymentTime(J)V

    .line 50
    .line 51
    .line 52
    return-void
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

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a00a4

    .line 8
    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/g;->x0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v1, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
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
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/g;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/g;->w0(Lcom/android/calendar/common/event/schema/CreditEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/g;->w0(Lcom/android/calendar/common/event/schema/CreditEvent;)V

    return-void
.end method

.method public s0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getBankName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v0, v1

    .line 21
    :goto_1
    const-string v3, "mBankName"

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->z:Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v5

    .line 36
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->z:Landroid/widget/TextView;

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v0, v5

    .line 48
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->z:Landroid/widget/TextView;

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v0, v5

    .line 59
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/CreditEvent;->getBankName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAmount()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v3, "mAmountTextView"

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->D:Landroid/widget/TextView;

    .line 83
    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v5

    .line 90
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->G:Landroid/widget/TextView;

    .line 94
    .line 95
    if-nez v0, :cond_7

    .line 96
    .line 97
    const-string v0, "mAmountUnit"

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object v0, v5

    .line 103
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->D:Landroid/widget/TextView;

    .line 108
    .line 109
    if-nez v0, :cond_9

    .line 110
    .line 111
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v0, v5

    .line 115
    :cond_9
    iget-object v3, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAmount()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAccount()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v3, "mCardNumberTextView"

    .line 135
    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->E:Landroid/widget/TextView;

    .line 139
    .line 140
    if-nez v0, :cond_a

    .line 141
    .line 142
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_a
    move-object v5, v0

    .line 147
    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->E:Landroid/widget/TextView;

    .line 152
    .line 153
    if-nez v0, :cond_c

    .line 154
    .line 155
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object v0, v5

    .line 159
    :cond_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->E:Landroid/widget/TextView;

    .line 163
    .line 164
    if-nez v0, :cond_d

    .line 165
    .line 166
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_d
    move-object v5, v0

    .line 171
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAccount()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :goto_6
    invoke-virtual {p0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v0, v2, v1}, Lb2/a;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput-boolean v0, p0, Lcom/android/calendar/event/v2/sms/g;->J:Z

    .line 199
    .line 200
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/g;->x0()V

    .line 201
    .line 202
    .line 203
    return-void
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
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/g;->v0(J)Lcom/android/calendar/common/event/schema/CreditEvent;

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

.method protected v0(J)Lcom/android/calendar/common/event/schema/CreditEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, p1, p2, v1}, Ls1/g;->b(Landroid/content/Context;JI)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 11
    .line 12
    return-object p1
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

.method protected w0(Lcom/android/calendar/common/event/schema/CreditEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/g;->I:Lcom/android/calendar/common/event/schema/CreditEvent;

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
