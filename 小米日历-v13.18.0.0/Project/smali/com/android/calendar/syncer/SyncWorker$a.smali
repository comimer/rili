.class public final Lcom/android/calendar/syncer/SyncWorker$a;
.super Ljava/lang/Object;
.source "SyncWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/syncer/SyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u000c0\u000c0\u000b2\u0006\u0010\n\u001a\u00020\u0004R\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/android/calendar/syncer/SyncWorker$a;",
        "",
        "Landroid/accounts/Account;",
        "account",
        "Ljava/util/UUID;",
        "b",
        "",
        "accountName",
        "accountType",
        "c",
        "reqId",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/work/WorkInfo;",
        "kotlin.jvm.PlatformType",
        "a",
        "KEY_ACCOUNT_NAME",
        "Ljava/lang/String;",
        "KEY_ACCOUNT_TYPE",
        "NAME",
        "TAG",
        "<init>",
        "()V",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/syncer/SyncWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "reqId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/work/r;->e()Landroidx/work/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/work/r;->g(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "getInstance().getWorkInfoByIdLiveData(reqId)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
    .line 20
    .line 21
    .line 22
.end method

.method public final b(Landroid/accounts/Account;)Ljava/util/UUID;
    .locals 2

    .line 1
    const-string v0, "account"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "account.name"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "account.type"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/syncer/SyncWorker$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
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
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    .line 1
    const-string v0, "accountName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "accountType"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/work/d$a;

    .line 12
    .line 13
    invoke-direct {v2}, Landroidx/work/d$a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0, p1}, Landroidx/work/d$a;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v1, p2}, Landroidx/work/d$a;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "Builder()\n              \u2026                 .build()"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Landroidx/work/l$a;

    .line 34
    .line 35
    const-class v0, Lcom/android/calendar/syncer/SyncWorker;

    .line 36
    .line 37
    invoke-direct {p2, v0}, Landroidx/work/l$a;-><init>(Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/work/s$a;->e(Landroidx/work/d;)Landroidx/work/s$a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/work/l$a;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/work/s$a;->b()Landroidx/work/s;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "OneTimeWorkRequestBuilde\u2026utData(inputData).build()"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast p1, Landroidx/work/l;

    .line 56
    .line 57
    invoke-static {}, Landroidx/work/r;->e()Landroidx/work/r;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 62
    .line 63
    const-string v1, "SyncWorker"

    .line 64
    .line 65
    invoke-virtual {p2, v1, v0, p1}, Landroidx/work/r;->a(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/l;)Landroidx/work/q;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroidx/work/q;->a()Landroidx/work/m;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/work/s;->a()Ljava/util/UUID;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "request.id"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p1
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
