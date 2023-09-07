.class public final Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;
.super Ljava/lang/Object;
.source "TrainEventInfoFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->c0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0016\u0010\u000c\u001a\u00020\n2\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/android/calendar/event/v2/sms/TrainEventInfoFragment$e",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView;",
        "parent",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "",
        "id",
        "Lkotlin/u;",
        "onItemSelected",
        "onNothingSelected",
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
.field final synthetic a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Z()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p3, "setupReminderSpinner(): updated minutes:"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "Cal:D:TrainEventInfoFragment"

    .line 35
    .line 36
    invoke-static {p3, p2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Z()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, p1}, Lcom/miui/calendar/util/x0;->M(Ljava/util/List;I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget-object p3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->a0()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eq p2, p3, :cond_0

    .line 56
    .line 57
    iget-object p3, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 58
    .line 59
    invoke-static {p3}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->M0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    iget-object p4, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 64
    .line 65
    invoke-static {p4}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->O0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p4}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 70
    .line 71
    .line 72
    move-result-wide p4

    .line 73
    invoke-static {p3, p4, p5, p1}, Lx3/b;->f(Landroid/content/Context;JI)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->m0(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment$e;->a:Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;->R0(Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;)V

    .line 84
    .line 85
    .line 86
    :cond_0
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
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string p1, "Cal:D:TrainEventInfoFragment"

    .line 2
    .line 3
    const-string v0, "onNothingSelected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

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
.end method
