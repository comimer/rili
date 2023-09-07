.class public Lcom/miui/calendar/util/z0$j;
.super Landroid/text/style/ClickableSpan;
.source "UserNoticeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/z0$j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/calendar/util/z0$j$a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/miui/calendar/util/z0$j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const v0, -0xffff01

    .line 2
    iput v0, p0, Lcom/miui/calendar/util/z0$j;->b:I

    .line 3
    iput-object p1, p0, Lcom/miui/calendar/util/z0$j;->a:Lcom/miui/calendar/util/z0$j$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/calendar/util/z0$j$a;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/miui/calendar/util/z0$j;->a:Lcom/miui/calendar/util/z0$j$a;

    .line 6
    iput p2, p0, Lcom/miui/calendar/util/z0$j;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/util/z0$j;->a:Lcom/miui/calendar/util/z0$j$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/miui/calendar/util/z0$j$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/miui/calendar/util/z0$j;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

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
.end method
