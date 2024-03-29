<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản lí tài khoản</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
</head>

<body>
  <!-- Add New User Modal Start -->
  <div class="modal fade" tabindex="-1" id="addNewUserModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Thêm tài khoản</h5>
          <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="add-user-form" class="p-2" novalidate>
            <div class="row mb-3 gx-3">
              <div class="col-6">
                <input type="text" name="fullname" class="form-control form-control-lg" placeholder="Nhập tài khoản" required>
                <div class="invalid-feedback">Tên tài khoản không được trống!</div>
              </div>

              <div class="col-6">
                <input type="password" name="password" class="form-control form-control-lg" placeholder="Nhập mật khẩu" required>
                <div class="invalid-feedback">Mật khẩu không được trống!</div>
              </div>
            </div>

            <div class="mb-3">
              <input type="email" name="email" class="form-control form-control-lg" placeholder="Nhập E-mail" required>
              <div class="invalid-feedback">Email không được để trống và phải đúng định dạng!</div>
            </div>

            <div class="mb-3">
              <input type="tel" name="phone" class="form-control form-control-lg" placeholder="Nhập Số điện thoại" required>
              <div class="invalid-feedback">Số điện thoại không được để trống và phải đúng định dạng!</div>
            </div>

            <div class="mb-3">
              <input type="submit" value="Add User" class="btn btn-primary btn-block btn-lg" id="add-user-btn">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Add New User Modal End -->

  <!-- Edit User Modal Start -->
  <div class="modal fade" tabindex="-1" id="editUserModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Cập nhật thông tin tài khoản</h5>
          <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="edit-user-form" class="p-2" novalidate>
            <input type="hidden" name="id" id="id">
            <div class="row mb-3 gx-3">
              <div class="col">
                <input type="text" name="fullname" id="fname" class="form-control form-control-lg" placeholder="Nhập tên tài khoản" required>
                <div class="invalid-feedback">Tên tài khoản is required!</div>
              </div>

              <div class="col">
                <input type="text" name="password" id="password" class="form-control form-control-lg" placeholder="Nhập mật khẩu" required>
                <div class="invalid-feedback">Mật khẩu is required!</div>
              </div>
            </div>

            <div class="mb-3">
              <input type="email" name="email" id="email" class="form-control form-control-lg" placeholder="Nhập E-mail" required>
              <div class="invalid-feedback">E-mail is required!</div>
            </div>

            <div class="mb-3">
              <input type="tel" name="phone" id="phone" class="form-control form-control-lg" placeholder="Nhập Số điện thoại" required>
              <div class="invalid-feedback">SĐT is required!</div>
            </div>

            <div class="mb-3">
              <input type="submit" value="Update User" class="btn btn-success btn-block btn-lg" id="edit-user-btn">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- Edit User Modal End -->
  <div class="container">
    <div class="row mt-4">
      <div class="col-lg-12 d-flex justify-content-between align-items-center">
        <div>
          <h4 class="text-primary">Danh sách tài khoản</h4>
        </div>
        <div>
          <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#addNewUserModal">Thêm tài khoản</button>
        </div>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-lg-12">
        <div id="showAlert"></div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered text-center">
            <thead>
              <tr>
                <th>STT</th>
                <th>Tên tài khoản</th>
                <th>Mật khẩu</th>
                <th>E-mail</th>
                <th>SĐT</th>
                <th>Quản lí</th>
              </tr>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <script src="main.js"></script>
</body>

</html>