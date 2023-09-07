.class public Lcom/miui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 18
    .line 19
    iput-object p2, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 20
    .line 21
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
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public final getArr(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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

.method public final getArrDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrDouble(II)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
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

.method public final getArrString(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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

.method public final getDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
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

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

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
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    return-object v0
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

.method public final getVersion()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    .line 3
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

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

.method public final isNull()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->existsDouble(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final isNull(I)Z
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->existsArrItem(II)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v3, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v3, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final set(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setArr(ID)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p1

    return p1
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
