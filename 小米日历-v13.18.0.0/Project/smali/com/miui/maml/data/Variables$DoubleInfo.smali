.class Lcom/miui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:D

.field mVarType:I

.field mVersion:I


# direct methods
.method public constructor <init>(DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 5
    .line 6
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    if-ne p4, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    .line 14
    .line 15
    return-void
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
.method public setValue(D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(DI)V

    return-void
.end method

.method public setValue(DI)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-le p3, v0, :cond_0

    .line 3
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-ne p3, v0, :cond_1

    .line 5
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 6
    iget p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    :cond_1
    return-void
.end method
