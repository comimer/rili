.class public final synthetic Lcom/android/calendar/homepage/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lw7/r;


# direct methods
.method public synthetic constructor <init>(Lw7/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/h;->a:Lw7/r;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/calendar/homepage/h;->a:Lw7/r;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/homepage/AllDayEventsView;->c(Lw7/r;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
