.class public final synthetic Lcom/android/calendar/event/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/g;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/calendar/event/g;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/event/g;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/event/g;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventActivity;->d0(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
