.class Lm7/a$b;
.super Lcom/xiaomi/passport/uicontroller/a$b;
.source "VerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/a;->g0(Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/a$b<",
        "Ln7/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lm7/a;


# direct methods
.method constructor <init>(Lm7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm7/a$b;->a:Lm7/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/a$b;-><init>()V

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
.method public a(Lcom/xiaomi/passport/uicontroller/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Ln7/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ln7/d;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lm7/a$b;->a:Lm7/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Ln7/d;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lm7/a;->N(Lm7/a;I)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lm7/a$b;->a:Lm7/a;

    .line 19
    .line 20
    invoke-virtual {p1}, Ln7/d;->b()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {v0, p1}, Lm7/a;->P(Lm7/a;I)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lm7/a$b;->a:Lm7/a;

    .line 28
    .line 29
    invoke-static {p1}, Lm7/a;->R(Lm7/a;)Ln7/h;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "lastDownloadTime"

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Ln7/h;->d(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lm7/a$b;->a:Lm7/a;

    .line 43
    .line 44
    invoke-static {p1}, Lm7/a;->R(Lm7/a;)Ln7/h;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "frequency"

    .line 49
    .line 50
    iget-object v1, p0, Lm7/a$b;->a:Lm7/a;

    .line 51
    .line 52
    invoke-static {v1}, Lm7/a;->M(Lm7/a;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p1, v0, v1}, Ln7/h;->c(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lm7/a$b;->a:Lm7/a;

    .line 60
    .line 61
    invoke-static {p1}, Lm7/a;->R(Lm7/a;)Ln7/h;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "maxduration"

    .line 66
    .line 67
    iget-object v1, p0, Lm7/a$b;->a:Lm7/a;

    .line 68
    .line 69
    invoke-static {v1}, Lm7/a;->O(Lm7/a;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v0, v1}, Ln7/h;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
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
