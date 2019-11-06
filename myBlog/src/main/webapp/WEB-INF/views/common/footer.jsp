<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<ul class="list-inline text-center">
					<li class="list-inline-item">
						<a href="https://github.com/byeongukk" target="_blank"> 
							<span class="fa-stack fa-lg"> 
								<i class="fas fa-circle fa-stack-2x"></i>
								<i class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a>
					</li>
				</ul>
				<p class="copyright text-muted">Copyright &copy; uk's blog 2019</p>
				<p class="copyright ">today : <c:out value="${ totalCount }"/> / total : <c:out value="${ todayCount }"/></p>
			</div>
		</div>
	</div>
</footer>