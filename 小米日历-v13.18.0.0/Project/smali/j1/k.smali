.class public Lj1/k;
.super Ljava/lang/Object;
.source "DropShadowEffectParser.java"


# static fields
.field private static final f:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

.field private static final g:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;


# instance fields
.field private a:Lf1/a;

.field private b:Lf1/b;

.field private c:Lf1/b;

.field private d:Lf1/b;

.field private e:Lf1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ef"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lj1/k;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 12
    .line 13
    const-string v0, "nm"

    .line 14
    .line 15
    const-string v1, "v"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lj1/k;->g:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 26
    .line 27
    return-void
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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_7

    .line 11
    .line 12
    sget-object v1, Lj1/k;->g:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a0(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d0()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    sparse-switch v3, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    :goto_1
    move v2, v1

    .line 43
    goto :goto_2

    .line 44
    :sswitch_0
    const-string v2, "Softness"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v2, 0x4

    .line 54
    goto :goto_2

    .line 55
    :sswitch_1
    const-string v2, "Shadow Color"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v2, 0x3

    .line 65
    goto :goto_2

    .line 66
    :sswitch_2
    const-string v2, "Direction"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v2, 0x2

    .line 76
    goto :goto_2

    .line 77
    :sswitch_3
    const-string v3, "Opacity"

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :sswitch_4
    const-string v2, "Distance"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v2, v4

    .line 96
    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d0()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_0
    invoke-static {p1, p2}, Lj1/d;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lf1/b;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lj1/k;->e:Lf1/b;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_1
    invoke-static {p1, p2}, Lj1/d;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lf1/a;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p0, Lj1/k;->a:Lf1/a;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_2
    invoke-static {p1, p2, v4}, Lj1/d;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Z)Lf1/b;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lj1/k;->c:Lf1/b;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_3
    invoke-static {p1, p2, v4}, Lj1/d;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;Z)Lf1/b;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iput-object v1, p0, Lj1/k;->b:Lf1/b;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_4
    invoke-static {p1, p2}, Lj1/d;->e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lf1/b;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, p0, Lj1/k;->d:Lf1/b;

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->H()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)Lj1/j;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lj1/k;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->a0(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c0()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d0()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()V

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lj1/k;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/h;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v2, p0, Lj1/k;->a:Lf1/a;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lj1/k;->b:Lf1/b;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lj1/k;->c:Lf1/b;

    .line 48
    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    iget-object v5, p0, Lj1/k;->d:Lf1/b;

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    iget-object v6, p0, Lj1/k;->e:Lf1/b;

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    new-instance p1, Lj1/j;

    .line 60
    .line 61
    move-object v1, p1

    .line 62
    invoke-direct/range {v1 .. v6}, Lj1/j;-><init>(Lf1/a;Lf1/b;Lf1/b;Lf1/b;Lf1/b;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    return-object p1
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
