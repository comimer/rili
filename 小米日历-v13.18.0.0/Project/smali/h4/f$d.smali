.class Lh4/f$d;
.super Ljava/lang/Object;
.source "NewDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/f;-><init>(Landroid/content/Context;Lh4/f$e;IIIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh4/f;


# direct methods
.method constructor <init>(Lh4/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/f$d;->a:Lh4/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lh4/f$d;->a:Lh4/f;

    .line 2
    .line 3
    invoke-static {p1}, Lh4/f;->t(Lh4/f;)Lmiuix/slidingwidget/widget/SlidingButton;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lh4/f$d;->a:Lh4/f;

    .line 8
    .line 9
    invoke-static {v0}, Lh4/f;->t(Lh4/f;)Lmiuix/slidingwidget/widget/SlidingButton;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
