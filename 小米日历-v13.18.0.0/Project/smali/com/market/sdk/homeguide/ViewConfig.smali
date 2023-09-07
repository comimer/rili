.class public Lcom/market/sdk/homeguide/ViewConfig;
.super Ljava/lang/Object;
.source "ViewConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public iconLocation:[I

.field public iconPaddingBottom:I

.field public iconPaddingLeft:I

.field public iconPaddingRight:I

.field public iconPaddingTop:I

.field public titleHeight:I

.field public titleLocation:[I

.field public titlePaddingBottom:I

.field public titlePaddingLeft:I

.field public titlePaddingRight:I

.field public titlePaddingTop:I

.field public titleTextColor:I

.field public titleTextSize:F

.field public titleWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    .line 12
    .line 13
    return-void
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
.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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
