.class public abstract Lmiuix/animation/b;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field static final sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animManager:Lf9/d;

.field public final handler:Lf9/n;

.field public final id:I

.field mDefaultMinVisible:F

.field mFlags:J

.field mFlagsSetTime:J

.field mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Lf9/o;

.field notifyManager:Lf9/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lmiuix/animation/b;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

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
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf9/n;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lf9/n;-><init>(Lmiuix/animation/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmiuix/animation/b;->handler:Lf9/n;

    .line 10
    .line 11
    new-instance v0, Lf9/d;

    .line 12
    .line 13
    invoke-direct {v0}, Lf9/d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lmiuix/animation/b;->animManager:Lf9/d;

    .line 17
    .line 18
    new-instance v1, Lf9/k;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lf9/k;-><init>(Lmiuix/animation/b;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lmiuix/animation/b;->notifyManager:Lf9/k;

    .line 24
    .line 25
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    .line 27
    .line 28
    iput v1, p0, Lmiuix/animation/b;->mDefaultMinVisible:F

    .line 29
    .line 30
    new-instance v1, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lmiuix/animation/b;->mMinVisibleChanges:Ljava/util/Map;

    .line 36
    .line 37
    sget-object v1, Lmiuix/animation/b;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, p0, Lmiuix/animation/b;->id:I

    .line 44
    .line 45
    new-instance v1, Lf9/o;

    .line 46
    .line 47
    invoke-direct {v1}, Lf9/o;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lmiuix/animation/b;->mTracker:Lf9/o;

    .line 51
    .line 52
    invoke-static {}, Lj9/f;->d()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    new-array v1, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v3, "IAnimTarget create ! "

    .line 62
    .line 63
    invoke-static {v3, v1}, Lj9/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0, p0}, Lf9/d;->n(Lmiuix/animation/b;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x3dcccccd    # 0.1f

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    new-array v3, v1, [Lmiuix/animation/property/b;

    .line 74
    .line 75
    sget-object v4, Lmiuix/animation/property/h;->f:Lmiuix/animation/property/h;

    .line 76
    .line 77
    aput-object v4, v3, v2

    .line 78
    .line 79
    sget-object v4, Lmiuix/animation/property/h;->g:Lmiuix/animation/property/h;

    .line 80
    .line 81
    const/4 v5, 0x1

    .line 82
    aput-object v4, v3, v5

    .line 83
    .line 84
    sget-object v4, Lmiuix/animation/property/h;->h:Lmiuix/animation/property/h;

    .line 85
    .line 86
    const/4 v6, 0x2

    .line 87
    aput-object v4, v3, v6

    .line 88
    .line 89
    invoke-virtual {p0, v0, v3}, Lmiuix/animation/b;->setMinVisibleChange(F[Lmiuix/animation/property/b;)Lmiuix/animation/b;

    .line 90
    .line 91
    .line 92
    const/high16 v0, 0x3b800000    # 0.00390625f

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    new-array v3, v3, [Lmiuix/animation/property/b;

    .line 96
    .line 97
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 98
    .line 99
    aput-object v4, v3, v2

    .line 100
    .line 101
    sget-object v4, Lmiuix/animation/property/h;->o:Lmiuix/animation/property/h;

    .line 102
    .line 103
    aput-object v4, v3, v5

    .line 104
    .line 105
    sget-object v4, Lmiuix/animation/property/i;->a:Lmiuix/animation/property/i$c;

    .line 106
    .line 107
    aput-object v4, v3, v6

    .line 108
    .line 109
    sget-object v4, Lmiuix/animation/property/i;->b:Lmiuix/animation/property/i$b;

    .line 110
    .line 111
    aput-object v4, v3, v1

    .line 112
    .line 113
    invoke-virtual {p0, v0, v3}, Lmiuix/animation/b;->setMinVisibleChange(F[Lmiuix/animation/property/b;)Lmiuix/animation/b;

    .line 114
    .line 115
    .line 116
    const v0, 0x3b03126f    # 0.002f

    .line 117
    .line 118
    .line 119
    new-array v1, v6, [Lmiuix/animation/property/b;

    .line 120
    .line 121
    sget-object v3, Lmiuix/animation/property/h;->d:Lmiuix/animation/property/h;

    .line 122
    .line 123
    aput-object v3, v1, v2

    .line 124
    .line 125
    sget-object v2, Lmiuix/animation/property/h;->e:Lmiuix/animation/property/h;

    .line 126
    .line 127
    aput-object v2, v1, v5

    .line 128
    .line 129
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/b;->setMinVisibleChange(F[Lmiuix/animation/property/b;)Lmiuix/animation/b;

    .line 130
    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract clean()V
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/b;->post(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
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
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lj9/f;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "IAnimTarget was destroyed \uff01"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lj9/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public getDefaultMinVisible()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/animation/b;->id:I

    .line 2
    .line 3
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public getIntValue(Lmiuix/animation/property/c;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lmiuix/animation/property/c;->getIntValue(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    return p1
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
.end method

.method public getLocationOnScreen([I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    aput v1, p1, v0

    .line 4
    .line 5
    aput v1, p1, v1

    .line 6
    .line 7
    return-void
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
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->mMinVisibleChanges:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget p1, p0, Lmiuix/animation/b;->mDefaultMinVisible:F

    .line 17
    .line 18
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    .line 20
    .line 21
    cmpl-float v0, p1, v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/b;->getDefaultMinVisible()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
    .line 31
    .line 32
    .line 33
.end method

.method public getNotifier()Lg9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->notifyManager:Lf9/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf9/k;->a()Lg9/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/b;)D
    .locals 2

    .line 1
    invoke-static {}, Li9/b;->d()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    return-wide v0
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
.end method

.method public getValue(Lmiuix/animation/property/b;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lmiuix/animation/property/b;->getValue(Ljava/lang/Object;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    .line 14
    .line 15
    return p1
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
.end method

.method public getVelocity(Lmiuix/animation/property/b;)D
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->animManager:Lf9/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf9/d;->g(Lmiuix/animation/property/b;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
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
.end method

.method public hasFlags(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/b;->mFlags:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lj9/a;->h(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->animManager:Lf9/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf9/d;->h([Lmiuix/animation/property/b;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidFlag()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/animation/b;->mFlagsSetTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
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
.end method

.method public onFrameEnd(Z)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->handler:Lf9/n;

    .line 2
    .line 3
    iget-wide v0, v0, Lf9/n;->c:J

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lmiuix/animation/b;->handler:Lf9/n;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/b;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/b;->mDefaultMinVisible:F

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
.end method

.method public setFlags(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/b;->mFlags:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lmiuix/animation/b;->mFlagsSetTime:J

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
.end method

.method public setIntValue(Lmiuix/animation/property/c;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/c;->setIntValue(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
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
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/b;
    .locals 4

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 5
    new-instance v3, Lmiuix/animation/property/f;

    invoke-direct {v3, v2}, Lmiuix/animation/property/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/b;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Lmiuix/animation/property/b;)Lmiuix/animation/b;
    .locals 5

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Lmiuix/animation/b;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/b;
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/b;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setToNotify(Le9/a;Ld9/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->notifyManager:Lf9/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lf9/k;->b(Le9/a;Ld9/b;)V

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
.end method

.method public setValue(Lmiuix/animation/property/b;F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/b;->setValue(Ljava/lang/Object;F)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
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
.end method

.method public setVelocity(Lmiuix/animation/property/b;D)V
    .locals 2

    .line 1
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpl-double v0, p2, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/animation/b;->animManager:Lf9/d;

    .line 11
    .line 12
    double-to-float p2, p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lf9/d;->q(Lmiuix/animation/property/b;F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
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
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/b;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lmiuix/animation/property/c;

    .line 2
    .line 3
    return p1
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "IAnimTarget{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "}"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public trackVelocity(Lmiuix/animation/property/b;D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/b;->mTracker:Lf9/o;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lf9/o;->b(Lmiuix/animation/b;Lmiuix/animation/property/b;D)V

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
.end method
