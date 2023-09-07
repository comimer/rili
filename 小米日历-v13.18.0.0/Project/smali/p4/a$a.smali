.class Lp4/a$a;
.super Ljava/lang/Object;
.source "TodoRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp4/a;->l(Lp4/a$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr4/a;

.field final synthetic b:I

.field final synthetic c:Lp4/a;


# direct methods
.method constructor <init>(Lp4/a;Lr4/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/a$a;->c:Lp4/a;

    .line 2
    .line 3
    iput-object p2, p0, Lp4/a$a;->a:Lr4/a;

    .line 4
    .line 5
    iput p3, p0, Lp4/a$a;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
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
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .line 1
    :try_start_0
    const-string p1, "card_button_clicked"

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "todo_item_click"

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string v2, "click_done"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "click_undone"

    .line 18
    .line 19
    :goto_0
    aput-object v2, v0, v1

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lp4/a$d;

    .line 25
    .line 26
    iget-object v4, p0, Lp4/a$a;->a:Lr4/a;

    .line 27
    .line 28
    iget-object v0, p0, Lp4/a$a;->c:Lp4/a;

    .line 29
    .line 30
    invoke-static {v0}, Lp4/a;->f(Lp4/a;)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v0, p0, Lp4/a$a;->c:Lp4/a;

    .line 35
    .line 36
    invoke-static {v0}, Lp4/a;->g(Lp4/a;)Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget v8, p0, Lp4/a$a;->b:I

    .line 41
    .line 42
    iget-object v0, p0, Lp4/a$a;->c:Lp4/a;

    .line 43
    .line 44
    invoke-static {v0}, Lp4/a;->h(Lp4/a;)Lp4/a$b;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    move-object v3, p1

    .line 49
    move v5, p2

    .line 50
    invoke-direct/range {v3 .. v9}, Lp4/a$d;-><init>(Lr4/a;ZLandroid/content/Context;Ljava/util/Calendar;ILp4/a$b;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    const-string p2, "Cal:D:TodoRecyclerAdapter"

    .line 59
    .line 60
    const-string v0, "onCheckedChanged(): update notes todo db error. "

    .line 61
    .line 62
    invoke-static {p2, v0, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
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
