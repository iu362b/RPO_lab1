import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const CountryComponent = props => {
    const params = useParams();
    const [id, setId] = useState(params.id);
    const [name, setName] = useState("");
    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrieveCountry(id)
                .then((resp) => {
                    setName(resp.data.name)
                })
                .catch(() => setHidden(true))
        }
    }, []);

    const onSubmit = (event) => {
        event.preventDefault();
        event.stopPropagation();
        let err = null;
        if (!name) err = "Название страны должно быть указано";
        if (err) props.dispatch(alertActions.error(err));
        let country = {id, name};

        if (parseInt(country.id) === -1) {
            BackendService.createCountry(country)
                .then(() => navigate(`/countries`))
                .catch(() => {
                })
        } else {
            BackendService.updateCountry(country)
                .then(() => navigate(`/countries`))
                .catch(() => {
                })
        }
    }

    if (hidden)
        return null;

    return (
        <div className="m-4">
            <div className="row my-2">
                <div className="col-auto me-auto"><h3>Страна</h3></div>
                <div className="col-auto"><button className="btn btn-outline-secondary"
                        onClick={() => navigate(`/countries`)}
                ><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад</button></div>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Название</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите название страны"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />
                </Form.Group>
                <button className="btn btn-outline-secondary mt-2" type="submit">
                    <FontAwesomeIcon icon={faSave}/>{' '}
                    Сохранить
                </button>
            </Form>
        </div>
    )
}

export default connect()(CountryComponent);