.class public final synthetic Lcom/android/calendar/homepage/n1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/n1;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/calendar/homepage/n1;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/n1;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/calendar/homepage/n1;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/WeekAgendaView$b;->d(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    return-void
.end method
