<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-8">
            <div class="card">
            <div
                class="card-header sticky-element bg-label-secondary d-flex justify-content-sm-between align-items-sm-center flex-column flex-sm-row">
                <h5 class="card-title mb-sm-0 me-2">PATIENT REGISTRY</h5>
                <input type="hidden" id="patientid" name="patientid" value="">
            </div>
            <div class="card-body pt-12">
                <div class="row">
                    <div class="col-lg-12 mx-auto">
                        <div class="row g-6">
                            <div class="col-md-4">
                                <label class="form-label" for="firstname">First name</label>
                                <input type="text" id="firstname" class="form-control"/>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="lastname">Last name</label>
                                <input type="text" id="lastname" class="form-control"/>
                            </div>
                            <div class="col-md-1">
                                <label class="form-label" for="mi">MI</label>
                                <input type="text" id="mi" class="form-control"/>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label" for="extension">Extension</label>
                                <input type="text" id="extension" class="form-control"/>
                            </div>
                        </div>
                        <br>
                        <div class="row g-6">
                            <div class="col-md-2">
                                    <label for="birthdate" class="form-label">Date of Birth</label>
                                    <input type="text" id="birthdate" class="form-control">
                            </div>
                            <div class="col-md-1">
                                <label class="form-label" for="age">Age</label>
                                <input type="text" id="age" class="form-control"/>
                            </div>
                            <div class="col-md-2">
                                <label class="form-label" for="gender">Gender</label>
                                <select id="gender" class="select2 form-select" data-allow-clear="true">
                                            <option></option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                    </select>
                            </div>
                            <div class="col-md-3">
                                        <label for="nationality" class="form-label">Nationality</label>
                                        <select id="nationality" class="select2 form-select" data-allow-clear="true">
                                            <option></option>
                                            <option value="Filipino">Filipino</option>
                                            <option value="American">American</option>
                                            <option value="Spanish">Spanish</option>
                                    </select>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="email">Email Address</label>
                                <input type="text" id="email" class="form-control"/>
                            </div>
                        </div>
                        <br>
                        <div class="row g-6">
                            <div class="col-md-5">
                                <label class="form-label" for="mobile">Mobile Number</label>
                                <input type="text" id="mobile" class="form-control"/>
                            </div>
                            <div class="col-md-7">
                                <label class="form-label" for="alternate">Alternate Contact</label>
                                <input type="text" id="alternate" class="form-control"/>
                            </div>
                        </div>
                        <br>
                        <div class="col-12">
                            <label class="form-label" for="address">Address</label>
                            <textarea
                            name="address"
                            class="form-control"
                            id="address"
                            rows="2"></textarea>
                        </div>
                    </div>
                    <div class="demo-inline-spacing">
                                <button type="button" class="btn btn-outline-primary" id="btn-new">
                                    <span class="icon-xs icon-base ti tabler-file me-2"></span>New
                                </button>
                                <button type="button" class="btn btn-outline-success" id="btn-save">
                                    <span class="icon-xs icon-base ti tabler-star me-2"></span>Save
                                </button>
                                <button type="button" class="btn btn-outline-info" id="btn-search">
                                    <span class="icon-xs icon-base ti tabler-search me-2"></span>Search
                                </button>
                            </div>
                </div>
            </div>
        </div>
    </div>
</div>