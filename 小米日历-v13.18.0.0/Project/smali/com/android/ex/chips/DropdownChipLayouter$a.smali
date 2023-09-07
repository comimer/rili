.class Lcom/android/ex/chips/DropdownChipLayouter$a;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/DropdownChipLayouter;->c(Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic b:Lcom/android/ex/chips/DropdownChipLayouter;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$a;->b:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/ex/chips/DropdownChipLayouter$a;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$a;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$a;->b:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/DropdownChipLayouter$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/ex/chips/DropdownChipLayouter$d;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
