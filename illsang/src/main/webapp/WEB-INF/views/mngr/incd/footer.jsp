<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>

				<footer class="footer">
        			<div class="container<c:if test="${gv_sidebar eq 'on'}">-fluid</c:if>">
          				<nav class="float-left">
            				<ul>
              					<li>
                					<a href="https://www.creative-tim.com">
                  						Creative Tim
                					</a>
              					</li>
              					<li>
                					<a href="https://creative-tim.com/presentation">
                  						About Us
                					</a>
              					</li>
              					<li>
                					<a href="http://blog.creative-tim.com">
                  						Blog
                					</a>
              					</li>
              					<li>
                					<a href="https://www.creative-tim.com/license">
                  						Licenses
                					</a>
              					</li>
            				</ul>
          				</nav>
          				<div class="copyright float-right">
							Copyright 2020. cafe illsang. All rights reserved.
          				</div>
        			</div>
      			</footer>
    		</div>
  		</div>
		<!-- Core JS Files -->
		<script src="/js/core/jquery-3.2.1.min.js"></script>
		<script src="/js/core/popper.min.js"></script>
		<script src="/js/core/bootstrap-material-design.min.js"></script>
		<script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
		<!-- Plugin for the momentJs -->
		<script src="/js/plugins/moment.min.js"></script>
		<!-- Plugin for Sweet Alert -->
		<script src="/js/plugins/sweetalert2.js"></script>
		<!-- Forms Validations Plugin -->
		<script src="/js/plugins/jquery.validate.min.js"></script>
		<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
		<script src="/js/plugins/jquery.bootstrap-wizard.js"></script>
		<!-- Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
		<script src="/js/plugins/bootstrap-selectpicker.js"></script>
		<!-- Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
		<script src="/js/plugins/bootstrap-datetimepicker.min.js"></script>
		<!-- DataTables.net Plugin, full documentation here: https://datatables.net/  -->
		<script src="/js/plugins/jquery.dataTables.min.js"></script>
		<!-- <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> -->
		<!-- Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
		<script src="/js/plugins/bootstrap-tagsinput.js"></script>
		<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
		<script src="/js/plugins/jasny-bootstrap.min.js"></script>
		<!-- Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
		<script src="/js/plugins/fullcalendar.min.js"></script>
		<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
		<script src="/js/plugins/jquery-jvectormap.js"></script>
		<!-- Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
		<script src="/js/plugins/nouislider.min.js"></script>
		<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
		<!-- Library for adding dinamically elements -->
		<script src="/js/plugins/arrive.min.js"></script>
		<!-- Google Maps Plugin    -->
		<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
		<!-- Chartist JS -->
		<script src="/js/plugins/chartist.min.js"></script>
		<!-- Notifications Plugin    -->
		<script src="/js/plugins/bootstrap-notify.js"></script>
		<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
		<script src="/js/material-dashboard.js?v=2.1.0" type="text/javascript"></script>
		<!-- Material Dashboard DEMO methods, don't include it in your project! -->
		<script src="/js/demo/demo.js"></script>
		<!-- User action script -->
		<script src="/js/common_lib.js"></script>
		<script src="/js/actn/${param.gv_prgr}.js"></script>
	</body>
</html>