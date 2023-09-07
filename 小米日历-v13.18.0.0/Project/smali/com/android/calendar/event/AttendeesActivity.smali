.class public final Lcom/android/calendar/event/AttendeesActivity;
.super Lcom/android/calendar/common/b;
.source "AttendeesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeesActivity$b;,
        Lcom/android/calendar/event/AttendeesActivity$a;,
        Lcom/android/calendar/event/AttendeesActivity$d;,
        Lcom/android/calendar/event/AttendeesActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 )2\u00020\u0001:\u0004*\r\u0011\u0015B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u001e\u0010\u0008\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0012\u0010\u000b\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020#0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/android/calendar/event/AttendeesActivity;",
        "Lcom/android/calendar/common/b;",
        "Lkotlin/u;",
        "b0",
        "Ljava/util/ArrayList;",
        "",
        "emailList",
        "email",
        "a0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/widget/TextView;",
        "b",
        "Landroid/widget/TextView;",
        "btnGuestsEmail",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "d",
        "Lcom/android/calendar/common/event/schema/AgendaEvent;",
        "agendaEvent",
        "e",
        "Ljava/lang/String;",
        "syncAccountName",
        "f",
        "calendarOwnerAccount",
        "g",
        "Ljava/util/ArrayList;",
        "toEmails",
        "h",
        "ccEmails",
        "",
        "Lcom/android/calendar/event/AttendeesActivity$c;",
        "i",
        "Ljava/util/List;",
        "itemList",
        "<init>",
        "()V",
        "k",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final k:Lcom/android/calendar/event/AttendeesActivity$b;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/event/AttendeesActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/event/AttendeesActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/event/AttendeesActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/event/AttendeesActivity;->k:Lcom/android/calendar/event/AttendeesActivity$b;

    return-void
.end method

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
    iput-object v0, p0, Lcom/android/calendar/event/AttendeesActivity;->j:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 31
    .line 32
    return-void
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

.method public static synthetic Y(Lcom/android/calendar/event/AttendeesActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/event/AttendeesActivity;->c0(Lcom/android/calendar/event/AttendeesActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic Z(Lcom/android/calendar/event/AttendeesActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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

.method private final a0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesActivity;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->j0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
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

.method private final b0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "agendaEvent"

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/calendar/event/AttendeesActivity;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/common/Utils;->i(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void
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

.method private static final c0(Lcom/android/calendar/event/AttendeesActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/calendar/event/AttendeesActivity;->b0()V

    .line 7
    .line 8
    .line 9
    return-void
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
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0d0027

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f120079

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v3, "extra_event"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    instance-of v3, v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-nez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iput-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 47
    .line 48
    :goto_2
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 49
    .line 50
    const-string v3, "agendaEvent"

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    :cond_3
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendars()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_b

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :cond_4
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarPosition()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ltz v1, :cond_b

    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 79
    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    :cond_5
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarPosition()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 91
    .line 92
    if-nez v4, :cond_6

    .line 93
    .line 94
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    :cond_6
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendars()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-ge v1, v4, :cond_b

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 112
    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    :cond_7
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendars()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 127
    .line 128
    if-nez v4, :cond_8

    .line 129
    .line 130
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    :cond_8
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarPosition()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getOwnerAccount()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->f:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 151
    .line 152
    if-nez v1, :cond_9

    .line 153
    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    :cond_9
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendars()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 166
    .line 167
    if-nez v4, :cond_a

    .line 168
    .line 169
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    :cond_a
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendarPosition()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getAccountName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iput-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->e:Ljava/lang/String;

    .line 188
    .line 189
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const v4, 0x7f03004e

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string v4, "resources.getStringArray(R.array.response_labels2)"

    .line 201
    .line 202
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 206
    .line 207
    if-nez v4, :cond_c

    .line 208
    .line 209
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    :cond_c
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getNoResponseAttendees()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const-string v5, ""

    .line 218
    .line 219
    const/16 v6, 0xa

    .line 220
    .line 221
    const/16 v7, 0x29

    .line 222
    .line 223
    const/16 v8, 0x28

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    const/4 v10, 0x1

    .line 227
    if-eqz v4, :cond_10

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    xor-int/2addr v11, v10

    .line 234
    if-eqz v11, :cond_f

    .line 235
    .line 236
    iget-object v11, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 237
    .line 238
    new-instance v12, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 239
    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    aget-object v14, v1, v9

    .line 246
    .line 247
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-direct {v12, v9, v13}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    iget-object v11, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 274
    .line 275
    new-instance v12, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-static {v4, v6}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-eqz v13, :cond_e

    .line 293
    .line 294
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    check-cast v13, Lcom/android/calendar/common/event/schema/Attendee;

    .line 299
    .line 300
    new-instance v14, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 301
    .line 302
    invoke-virtual {v13}, Lcom/android/calendar/common/event/schema/Attendee;->getName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    if-nez v13, :cond_d

    .line 307
    .line 308
    move-object v13, v5

    .line 309
    goto :goto_4

    .line 310
    :cond_d
    const-string v15, "attendee.name ?: \"\""

    .line 311
    .line 312
    invoke-static {v13, v15}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_4
    invoke-direct {v14, v10, v13}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_e
    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    .line 324
    .line 325
    :cond_f
    sget-object v4, Lkotlin/u;->a:Lkotlin/u;

    .line 326
    .line 327
    :cond_10
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 328
    .line 329
    if-nez v4, :cond_11

    .line 330
    .line 331
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/4 v4, 0x0

    .line 335
    :cond_11
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getAcceptedAttendees()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    const-string v11, "attendee.name"

    .line 340
    .line 341
    const/4 v12, 0x2

    .line 342
    if-eqz v4, :cond_15

    .line 343
    .line 344
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v13

    .line 348
    xor-int/2addr v13, v10

    .line 349
    if-eqz v13, :cond_14

    .line 350
    .line 351
    iget-object v13, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 352
    .line 353
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    xor-int/2addr v13, v10

    .line 358
    if-eqz v13, :cond_12

    .line 359
    .line 360
    iget-object v13, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 361
    .line 362
    new-instance v14, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 363
    .line 364
    invoke-direct {v14, v12, v5}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_12
    iget-object v13, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 371
    .line 372
    new-instance v14, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 373
    .line 374
    new-instance v15, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    aget-object v2, v1, v10

    .line 380
    .line 381
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-direct {v14, v9, v2}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 408
    .line 409
    new-instance v13, Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-static {v4, v6}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v14

    .line 426
    if-eqz v14, :cond_13

    .line 427
    .line 428
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v14

    .line 432
    check-cast v14, Lcom/android/calendar/common/event/schema/Attendee;

    .line 433
    .line 434
    new-instance v15, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 435
    .line 436
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/Attendee;->getName()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v14

    .line 440
    invoke-static {v14, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-direct {v15, v10, v14}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_13
    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    .line 452
    .line 453
    :cond_14
    sget-object v2, Lkotlin/u;->a:Lkotlin/u;

    .line 454
    .line 455
    :cond_15
    iget-object v2, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 456
    .line 457
    if-nez v2, :cond_16

    .line 458
    .line 459
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const/4 v2, 0x0

    .line 463
    :cond_16
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getDeclinedAttendees()Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    if-eqz v2, :cond_1a

    .line 468
    .line 469
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    xor-int/2addr v4, v10

    .line 474
    if-eqz v4, :cond_19

    .line 475
    .line 476
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 477
    .line 478
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    xor-int/2addr v4, v10

    .line 483
    if-eqz v4, :cond_17

    .line 484
    .line 485
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 486
    .line 487
    new-instance v13, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 488
    .line 489
    invoke-direct {v13, v12, v5}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    :cond_17
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 496
    .line 497
    new-instance v13, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 498
    .line 499
    new-instance v14, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const/4 v15, 0x3

    .line 505
    aget-object v15, v1, v15

    .line 506
    .line 507
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 514
    .line 515
    .line 516
    move-result v15

    .line 517
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    invoke-direct {v13, v9, v14}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 534
    .line 535
    new-instance v13, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-static {v2, v6}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 538
    .line 539
    .line 540
    move-result v14

    .line 541
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .line 543
    .line 544
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    if-eqz v14, :cond_18

    .line 553
    .line 554
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v14

    .line 558
    check-cast v14, Lcom/android/calendar/common/event/schema/Attendee;

    .line 559
    .line 560
    new-instance v15, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 561
    .line 562
    invoke-virtual {v14}, Lcom/android/calendar/common/event/schema/Attendee;->getName()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v14

    .line 566
    invoke-static {v14, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-direct {v15, v10, v14}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    goto :goto_6

    .line 576
    :cond_18
    invoke-interface {v4, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 577
    .line 578
    .line 579
    :cond_19
    sget-object v2, Lkotlin/u;->a:Lkotlin/u;

    .line 580
    .line 581
    :cond_1a
    iget-object v2, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 582
    .line 583
    if-nez v2, :cond_1b

    .line 584
    .line 585
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    const/4 v2, 0x0

    .line 589
    :cond_1b
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getTentativeAttendees()Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    if-eqz v2, :cond_1f

    .line 594
    .line 595
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    xor-int/2addr v4, v10

    .line 600
    if-eqz v4, :cond_1e

    .line 601
    .line 602
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 603
    .line 604
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    xor-int/2addr v4, v10

    .line 609
    if-eqz v4, :cond_1c

    .line 610
    .line 611
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 612
    .line 613
    new-instance v13, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 614
    .line 615
    invoke-direct {v13, v12, v5}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    :cond_1c
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 622
    .line 623
    new-instance v5, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 624
    .line 625
    new-instance v13, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    aget-object v1, v1, v12

    .line 631
    .line 632
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-direct {v5, v9, v1}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 659
    .line 660
    new-instance v4, Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-static {v2, v6}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .line 668
    .line 669
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-eqz v5, :cond_1d

    .line 678
    .line 679
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    check-cast v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 684
    .line 685
    new-instance v6, Lcom/android/calendar/event/AttendeesActivity$c;

    .line 686
    .line 687
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Attendee;->getName()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    invoke-static {v5, v11}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-direct {v6, v10, v5}, Lcom/android/calendar/event/AttendeesActivity$c;-><init>(ILjava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    goto :goto_7

    .line 701
    :cond_1d
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    .line 703
    .line 704
    :cond_1e
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 705
    .line 706
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .line 710
    .line 711
    const-string v2, "itemList: "

    .line 712
    .line 713
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    iget-object v2, v0, Lcom/android/calendar/event/AttendeesActivity;->i:Ljava/util/List;

    .line 717
    .line 718
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    const-string v2, "Cal:D:AttendeesActivity"

    .line 726
    .line 727
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    const v1, 0x7f0a010a

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    const-string v2, "findViewById(R.id.btn_email_guests)"

    .line 738
    .line 739
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    check-cast v1, Landroid/widget/TextView;

    .line 743
    .line 744
    iput-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->b:Landroid/widget/TextView;

    .line 745
    .line 746
    const-string v2, "btnGuestsEmail"

    .line 747
    .line 748
    if-nez v1, :cond_20

    .line 749
    .line 750
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    const/4 v1, 0x0

    .line 754
    :cond_20
    invoke-static {v1, v9}, Lcom/miui/calendar/util/v;->f(Landroid/view/View;Z)V

    .line 755
    .line 756
    .line 757
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->b:Landroid/widget/TextView;

    .line 758
    .line 759
    if-nez v1, :cond_21

    .line 760
    .line 761
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    const/4 v1, 0x0

    .line 765
    :cond_21
    new-instance v4, Lcom/android/calendar/event/a;

    .line 766
    .line 767
    invoke-direct {v4, v0}, Lcom/android/calendar/event/a;-><init>(Lcom/android/calendar/event/AttendeesActivity;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    .line 772
    .line 773
    const v1, 0x7f0a04c9

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    const-string v4, "findViewById(R.id.recycler_view)"

    .line 781
    .line 782
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 786
    .line 787
    iput-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 788
    .line 789
    const-string v4, "recyclerView"

    .line 790
    .line 791
    if-nez v1, :cond_22

    .line 792
    .line 793
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    const/4 v1, 0x0

    .line 797
    :cond_22
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 798
    .line 799
    invoke-direct {v5, v0, v10, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 803
    .line 804
    .line 805
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 806
    .line 807
    if-nez v1, :cond_23

    .line 808
    .line 809
    invoke-static {v4}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    const/4 v1, 0x0

    .line 813
    :cond_23
    new-instance v4, Lcom/android/calendar/event/AttendeesActivity$a;

    .line 814
    .line 815
    invoke-direct {v4, v0}, Lcom/android/calendar/event/AttendeesActivity$a;-><init>(Lcom/android/calendar/event/AttendeesActivity;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 819
    .line 820
    .line 821
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 822
    .line 823
    if-nez v1, :cond_24

    .line 824
    .line 825
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const/4 v1, 0x0

    .line 829
    :cond_24
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getAcceptedAttendees()Ljava/util/List;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    const-string v4, "attendee.email"

    .line 834
    .line 835
    if-eqz v1, :cond_26

    .line 836
    .line 837
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    if-eqz v5, :cond_25

    .line 846
    .line 847
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    check-cast v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 852
    .line 853
    iget-object v6, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 854
    .line 855
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-direct {v0, v6, v5}, Lcom/android/calendar/event/AttendeesActivity;->a0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    goto :goto_8

    .line 866
    :cond_25
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 867
    .line 868
    :cond_26
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 869
    .line 870
    if-nez v1, :cond_27

    .line 871
    .line 872
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    const/4 v1, 0x0

    .line 876
    :cond_27
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getTentativeAttendees()Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    if-eqz v1, :cond_29

    .line 881
    .line 882
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v5

    .line 890
    if-eqz v5, :cond_28

    .line 891
    .line 892
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v5

    .line 896
    check-cast v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 897
    .line 898
    iget-object v6, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 899
    .line 900
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v5

    .line 904
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-direct {v0, v6, v5}, Lcom/android/calendar/event/AttendeesActivity;->a0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    goto :goto_9

    .line 911
    :cond_28
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 912
    .line 913
    :cond_29
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 914
    .line 915
    if-nez v1, :cond_2a

    .line 916
    .line 917
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    const/4 v1, 0x0

    .line 921
    :cond_2a
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getNoResponseAttendees()Ljava/util/List;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    if-eqz v1, :cond_2c

    .line 926
    .line 927
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    if-eqz v5, :cond_2b

    .line 936
    .line 937
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    check-cast v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 942
    .line 943
    iget-object v6, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 944
    .line 945
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v5

    .line 949
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-direct {v0, v6, v5}, Lcom/android/calendar/event/AttendeesActivity;->a0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    goto :goto_a

    .line 956
    :cond_2b
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 957
    .line 958
    :cond_2c
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 959
    .line 960
    if-nez v1, :cond_2d

    .line 961
    .line 962
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    const/4 v1, 0x0

    .line 966
    :cond_2d
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getDeclinedAttendees()Ljava/util/List;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    if-eqz v1, :cond_2f

    .line 971
    .line 972
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 977
    .line 978
    .line 979
    move-result v5

    .line 980
    if-eqz v5, :cond_2e

    .line 981
    .line 982
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v5

    .line 986
    check-cast v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 987
    .line 988
    iget-object v6, v0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 989
    .line 990
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Attendee;->getEmail()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-direct {v0, v6, v5}, Lcom/android/calendar/event/AttendeesActivity;->a0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    goto :goto_b

    .line 1001
    :cond_2e
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 1002
    .line 1003
    :cond_2f
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->d:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 1004
    .line 1005
    if-nez v1, :cond_30

    .line 1006
    .line 1007
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    const/4 v1, 0x0

    .line 1011
    :cond_30
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v1

    .line 1019
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v3

    .line 1025
    if-nez v3, :cond_31

    .line 1026
    .line 1027
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v3

    .line 1033
    if-nez v3, :cond_31

    .line 1034
    .line 1035
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1036
    .line 1037
    const-string v4, "eventOrganizerEmail"

    .line 1038
    .line 1039
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-direct {v0, v3, v1}, Lcom/android/calendar/event/AttendeesActivity;->a0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_31
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1046
    .line 1047
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    if-gtz v3, :cond_32

    .line 1052
    .line 1053
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 1054
    .line 1055
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1056
    .line 1057
    .line 1058
    move-result v3

    .line 1059
    if-lez v3, :cond_32

    .line 1060
    .line 1061
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1062
    .line 1063
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 1064
    .line 1065
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    .line 1067
    .line 1068
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->h:Ljava/util/ArrayList;

    .line 1069
    .line 1070
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1071
    .line 1072
    .line 1073
    :cond_32
    iget-object v3, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1074
    .line 1075
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    if-lez v3, :cond_33

    .line 1080
    .line 1081
    move v3, v10

    .line 1082
    goto :goto_c

    .line 1083
    :cond_33
    move v3, v9

    .line 1084
    :goto_c
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1087
    .line 1088
    .line 1089
    move-result v4

    .line 1090
    if-ne v4, v10, :cond_34

    .line 1091
    .line 1092
    iget-object v4, v0, Lcom/android/calendar/event/AttendeesActivity;->g:Ljava/util/ArrayList;

    .line 1093
    .line 1094
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    if-eqz v1, :cond_34

    .line 1099
    .line 1100
    move v3, v9

    .line 1101
    :cond_34
    iget-object v1, v0, Lcom/android/calendar/event/AttendeesActivity;->b:Landroid/widget/TextView;

    .line 1102
    .line 1103
    if-nez v1, :cond_35

    .line 1104
    .line 1105
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    const/4 v2, 0x0

    .line 1109
    goto :goto_d

    .line 1110
    :cond_35
    move-object v2, v1

    .line 1111
    :goto_d
    if-eqz v3, :cond_36

    .line 1112
    .line 1113
    goto :goto_e

    .line 1114
    :cond_36
    const/16 v9, 0x8

    .line 1115
    .line 1116
    :goto_e
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    .line 1118
    .line 1119
    return-void
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method
