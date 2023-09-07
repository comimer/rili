.class final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.android.calendar.event.v2.AgendaEventInfoFragment$onEventLoad$2$1"
    f = "AgendaEventInfoFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dateType:I

.field final synthetic $displayedDatetime:Ljava/lang/String;

.field final synthetic $event:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field final synthetic $localTimezone:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Ljava/lang/String;Lcom/android/calendar/common/event/schema/AgendaEvent;Ljava/lang/String;ILkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
            "Ljava/lang/String;",
            "Lcom/android/calendar/common/event/schema/AgendaEvent;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$displayedDatetime:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    iput-object p4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$localTimezone:Ljava/lang/String;

    iput p5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$dateType:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;

    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$displayedDatetime:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$localTimezone:Ljava/lang/String;

    iget v5, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$dateType:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Ljava/lang/String;Lcom/android/calendar/common/event/schema/AgendaEvent;Ljava/lang/String;ILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_13

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->i0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$displayedDatetime:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->m0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x7f1205e9

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x2c

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const v3, 0x7f1201df

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const v2, 0x7f1201d9

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$displayedDatetime:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v1, 0x1

    .line 144
    xor-int/2addr v0, v1

    .line 145
    invoke-static {p1, v0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->w0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Z)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->r0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-nez p1, :cond_4

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :goto_3
    new-instance p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 182
    .line 183
    invoke-direct {p1}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getRrule()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$localTimezone:Ljava/lang/String;

    .line 202
    .line 203
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_5

    .line 222
    .line 223
    const-string v1, "UTC"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    iput-object v0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->a:Lcom/miui/calendar/util/r0;

    .line 229
    .line 230
    invoke-static {p1, v0}, Lcom/miui/calendar/repeats/b;->h(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_6

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, p1}, Lcom/android/calendar/event/d0;->c(Landroid/content/res/Resources;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    goto :goto_4

    .line 247
    :cond_6
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatSchema;->fromEventRecurrence(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Lcom/miui/calendar/repeats/RepeatSchema;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 252
    .line 253
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v2, v1, v0}, Lcom/miui/calendar/repeats/b;->c(Landroid/content/Context;Lcom/miui/calendar/repeats/RepeatSchema;Lcom/miui/calendar/util/r0;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    :goto_4
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndSchema;->fromEventRecurrence(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p1, v1}, Lcom/miui/calendar/repeats/RepeatEndSchema;->getRepeatEndString(Landroid/content/Context;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    if-eqz v0, :cond_12

    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-nez v1, :cond_7

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 290
    .line 291
    invoke-static {v0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->p0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-nez v0, :cond_8

    .line 296
    .line 297
    goto/16 :goto_a

    .line 298
    .line 299
    :cond_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_a

    .line 303
    .line 304
    :cond_9
    iget p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$dateType:I

    .line 305
    .line 306
    const/16 v0, 0x8

    .line 307
    .line 308
    if-ne p1, v1, :cond_10

    .line 309
    .line 310
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 311
    .line 312
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getRdate()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {p1, v1}, Lcom/miui/calendar/util/b0;->b(Landroid/content/Context;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    const/4 v1, 0x2

    .line 331
    if-eq p1, v1, :cond_c

    .line 332
    .line 333
    const/4 v1, 0x3

    .line 334
    if-eq p1, v1, :cond_a

    .line 335
    .line 336
    const/4 p1, 0x0

    .line 337
    goto :goto_8

    .line 338
    :cond_a
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 339
    .line 340
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 345
    .line 346
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_b

    .line 355
    .line 356
    const v1, 0x7f120517

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_b
    const v1, 0x7f120516

    .line 361
    .line 362
    .line 363
    :goto_6
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    goto :goto_8

    .line 368
    :cond_c
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 369
    .line 370
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 375
    .line 376
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-static {v1}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_d

    .line 385
    .line 386
    const v1, 0x7f12051b

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_d
    const v1, 0x7f12051a

    .line 391
    .line 392
    .line 393
    :goto_7
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    :goto_8
    if-eqz p1, :cond_12

    .line 398
    .line 399
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 400
    .line 401
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->q0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-nez v1, :cond_e

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_e
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    :goto_9
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 412
    .line 413
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->o0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    if-nez p1, :cond_f

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_10
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 425
    .line 426
    invoke-static {p1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->n0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/view/ViewGroup;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    if-nez p1, :cond_11

    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    :cond_12
    :goto_a
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 437
    .line 438
    return-object p1

    .line 439
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 440
    .line 441
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 442
    .line 443
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p1
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
.end method
