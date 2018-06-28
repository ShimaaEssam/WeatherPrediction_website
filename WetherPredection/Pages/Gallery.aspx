<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Pages_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
     <link href="../css/PopUp.css" rel="stylesheet" id="bootstrap-css" />
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {

            loadGallery(true, 'a.thumbnail');

            //This function disables buttons when needed
            function disableButtons(counter_max, counter_current) {
                $('#show-previous-image, #show-next-image').show();
                if (counter_max == counter_current) {
                    $('#show-next-image').hide();
                } else if (counter_current == 1) {
                    $('#show-previous-image').hide();
                }
            }

            /**
             *
             * @param setIDs        Sets IDs when DOM is loaded. If using a PHP counter, set to false.
             * @param setClickAttr  Sets the attribute for the click handler.
             */

            function loadGallery(setIDs, setClickAttr) {
                var current_image,
                    selector,
                    counter = 0;

                $('#show-next-image, #show-previous-image').click(function () {
                    if ($(this).attr('id') == 'show-previous-image') {
                        current_image--;
                    } else {
                        current_image++;
                    }

                    selector = $('[data-image-id="' + current_image + '"]');
                    updateGallery(selector);
                });

                function updateGallery(selector) {
                    var $sel = selector;
                    current_image = $sel.data('image-id');
                    $('#image-gallery-caption').text($sel.data('caption'));
                    $('#image-gallery-title').text($sel.data('title'));
                    $('#image-gallery-image').attr('src', $sel.data('image'));
                    disableButtons(counter, $sel.data('image-id'));
                }

                if (setIDs == true) {
                    $('[data-image-id]').each(function () {
                        counter++;
                        $(this).attr('data-image-id', counter);
                    });
                }
                $(setClickAttr).on('click', function () {
                    updateGallery($(this));
                });
            }
        });
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="fullwidth-block">

        <div class="container">
            <div class="row">
                <h1 class="page-header">Thumbnail Gallery</h1>

                <div class="col-md-12">
                    
                    <asp:Repeater ID="Repeater_Gallery"  runat="server">

                        <ItemTemplate>
                            <div class="col-md-3 thumb">
                        <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title='<%# Eval("Name") %>'
                            data-caption='<%# Eval("Description") %>' runat="server" data-image='<%# Eval("ImageUrl") %>' data-target="#image-gallery">
                            <img class="img-responsive" src='<%# Eval("ImageUrl") %>' runat="server" alt="Short alt text" />
                        </a>
                    </div>

                        </ItemTemplate>
                    </asp:Repeater>

                    
                   
                </div>


                <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="image-gallery-title"></h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">

                                    <div class="col-md-7">
                                         <img id="image-gallery-image" class="img-responsive" src="" />
                                    </div>

                                     <div class="col-md-5 text-justify" id="image-gallery-caption">
                                    This text will be overwritten by jQuery
                                         </div>
               
                                   

                                </div>
                               
                                </div>
                            <div class="modal-footer">

                                <div class="col-md-2">
                                    <button type="button" class="btn btn-primary" id="show-previous-image">Previous</button>
                                </div>


                                <div class="col-md-2">
                                    <button type="button" id="show-next-image" class="btn btn-default">Next</button>
                                </div>
                            </div>

                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>


