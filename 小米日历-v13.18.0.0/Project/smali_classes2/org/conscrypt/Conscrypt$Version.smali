.class public Lorg/conscrypt/Conscrypt$Version;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/conscrypt/Conscrypt$Version;->major:I

    .line 4
    iput p2, p0, Lorg/conscrypt/Conscrypt$Version;->minor:I

    .line 5
    iput p3, p0, Lorg/conscrypt/Conscrypt$Version;->patch:I

    return-void
.end method

.method synthetic constructor <init>(IIILorg/conscrypt/Conscrypt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/Conscrypt$Version;-><init>(III)V

    return-void
.end method


# virtual methods
.method public major()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->major:I

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

.method public minor()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->minor:I

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

.method public patch()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/conscrypt/Conscrypt$Version;->patch:I

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
