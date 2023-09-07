.class public final Lcom/android/calendar/event/EventInfoActivity$b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "EventInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/android/calendar/event/EventInfoActivity$b;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "getItemCount",
        "position",
        "getItemViewType",
        "",
        "getItemId",
        "itemId",
        "",
        "g",
        "Landroidx/fragment/app/Fragment;",
        "h",
        "Lcom/android/calendar/event/EventInfoActivity;",
        "activity",
        "<init>",
        "(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity;)V",
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
.field final synthetic i:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/EventInfoActivity;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/d;)V

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
.method public g(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
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

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventType()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v1, v2, :cond_3

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0x9

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;-><init>()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v1, Lcom/android/calendar/event/v2/sms/q;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/q;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v1, Lcom/android/calendar/event/v2/sms/p;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/p;-><init>()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    new-instance v1, Lcom/android/calendar/event/v2/sms/o;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/o;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_3
    new-instance v1, Lcom/android/calendar/event/v2/sms/n;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/n;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_4
    new-instance v1, Lcom/android/calendar/event/v2/sms/h;

    .line 65
    .line 66
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/h;-><init>()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_5
    new-instance v1, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/TrainEventInfoFragment;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_6
    new-instance v1, Lcom/android/calendar/event/v2/sms/m;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/m;-><init>()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Lcom/android/calendar/event/v2/b1;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/android/calendar/event/v2/b1;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lcom/android/calendar/event/v2/j0;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/android/calendar/event/v2/j0;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance v1, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 95
    .line 96
    invoke-direct {v1}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;-><init>()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v1, Lcom/android/calendar/event/v2/sms/g;

    .line 101
    .line 102
    invoke-direct {v1}, Lcom/android/calendar/event/v2/sms/g;-><init>()V

    .line 103
    .line 104
    .line 105
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    .line 106
    .line 107
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "extra_key_event_info"

    .line 111
    .line 112
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$b;->i:Lcom/android/calendar/event/EventInfoActivity;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoActivity;->p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 131
    .line 132
    :cond_4
    return-object v1

    .line 133
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
