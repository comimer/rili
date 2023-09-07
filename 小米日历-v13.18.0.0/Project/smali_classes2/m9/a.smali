.class public abstract Lm9/a;
.super Ljava/lang/Object;
.source "BaseFloatingActivityHelper.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lmiuix/appcompat/app/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lmiuix/appcompat/app/m;

    .line 6
    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->u()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
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


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Landroid/view/View;
.end method

.method public abstract d()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g(Landroid/view/View;Z)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end method

.method public abstract h()Z
.end method

.method public abstract j()Z
.end method

.method public abstract k(Landroid/view/View;Z)Landroid/view/ViewGroup;
.end method

.method public abstract l(Z)V
.end method

.method public abstract m(Z)V
.end method

.method public abstract n(Lmiuix/appcompat/app/floatingactivity/g;)V
.end method

.method public abstract o()V
.end method
